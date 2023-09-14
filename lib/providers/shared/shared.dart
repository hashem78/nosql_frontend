import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/proto_gen/customstruct.pb.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/proto_gen/signaling.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'shared.g.dart';

@Riverpod(dependencies: [nodeService])
Future<CollectionDocument> document(
  DocumentRef ref, {
  required String collectionId,
  required String documentId,
}) async {
  final NodeServiceClient nodeService = ref.watch(nodeServiceProvider);
  return await nodeService.getCollectionDocument(GetCollectionDocumentRequest(
      collectionId: collectionId, documentId: documentId));
}

@Riverpod(dependencies: [nodeService])
Stream<dynamic> queryStream(
  QueryStreamRef ref, {
  required String collectionId,
  required String property,
  required Operator operator,
  required String value,
}) async* {
  final NodeServiceClient nodeService = ref.watch(nodeServiceProvider);
  final propTypeResp = await nodeService.getPropertyType(
    GetCollectionPropertyTypeRequest(
      collectionId: collectionId,
      property: property,
    ),
  );
  final propertyType = propTypeResp.propertyType;

  final valueToSend = switch (propertyType) {
    CollectionPropertyType.INTEGER => () {
        if (operator == Operator.IN || operator == Operator.NOT_IN) {
          return CustomValue(
            listValue: CustomList(
              values: List<dynamic>.of(jsonDecode(value)).map(
                (e) => CustomValue(intValue: e),
              ),
            ),
          );
        }
        return CustomValue(intValue: int.parse(value));
      }(),
    CollectionPropertyType.STRING => () {
        if (operator == Operator.IN || operator == Operator.NOT_IN) {
          return CustomValue(
            listValue: CustomList(
              values: List<dynamic>.of(jsonDecode(value)).map(
                (e) => CustomValue(stringValue: e),
              ),
            ),
          );
        }
        return CustomValue(stringValue: value);
      }(),
    CollectionPropertyType.ARRAY => CustomValue(
        listValue: CustomList(
          values: List<dynamic>.of(jsonDecode(value)).map(
            (e) => CustomValue(stringValue: e),
          ),
        ),
      ),
    _ => null,
  };

  final stream = nodeService.queryDatabase(QueryDatabaseRequest(
    collectionId: collectionId,
    property: property,
    operator: operator,
    value: valueToSend,
  ));
  await for (final event in stream) {
    yield jsonDecode(event.data);
  }
  throw QueryEndNotification();
}

class QueryEndNotification {}

@Riverpod(dependencies: [nodeService])
Future<List<String>> collectionProperties(
  CollectionPropertiesRef ref,
  String collectionId,
) async {
  final nodeService = ref.watch(nodeServiceProvider);
  final response = await nodeService.getDocumentSample(
    GetDocumentSampleRequest(collectionId: collectionId),
  );
  final decodedSample = Map<String, dynamic>.from(
    jsonDecode(response.documentSample),
  );
  return decodedSample.keys.toList();
}

@Riverpod(dependencies: [nodeService])
Future<CollectionMetaData> collectionMetaData(
  CollectionMetaDataRef ref,
  String collectionId,
) async {
  final nodeService = ref.watch(nodeServiceProvider);
  return await nodeService.getCollectionMetaData(
    GetCollectionMetaDataRequest(collectionId: collectionId),
  );
}

@Riverpod(dependencies: [nodeService])
Stream<ClientHelloResponse> clientHello(ClientHelloRef ref) {
  final nodeService = ref.watch(nodeServiceProvider);
  final controller =
      BehaviorSubject<ClientHelloRequest>.seeded(ClientHelloRequest());
  ref.onDispose(() {
    controller.close();
  });
  return nodeService.clientHello(controller.stream);
}

@Riverpod(dependencies: [nodeService])
Future<GetCollectionsResponse> collections(CollectionsRef ref) async {
  final nodeService = ref.watch(nodeServiceProvider);
  return await nodeService.getCollections(GetCollectionsRequest());
}

@Riverpod(dependencies: [nodeService])
Stream<CollectionDocument> documents(DocumentsRef ref, String collectionId) {
  final nodeService = ref.read(nodeServiceProvider);
  return nodeService.getCollectionDocuments(
    GetCollectionDocumentsRequest(collectionId: collectionId),
  );
}

@Riverpod(dependencies: [nodePort])
NodeServiceClient nodeService(NodeServiceRef ref) {
  final port = ref.watch(nodePortProvider);
  final channel = ClientChannel(
    '127.0.0.1',
    port: port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  return NodeServiceClient(channel);
}

@riverpod
SignalingServiceClient signaling(SignalingRef ref) {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 8000,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  return SignalingServiceClient(channel);
}

@riverpod
Future<int> nodePortFuture(NodePortFutureRef ref) async {
  final signalingClient = ref.watch(signalingProvider);
  final loadResponse = await signalingClient.discoverLoad(
    LoadDiscoveryRequest(),
  );

  return loadResponse.port;
}

@Riverpod(dependencies: [])
int nodePort(NodePortRef ref) {
  throw UnimplementedError("Override the provider first");
}

@riverpod
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey(
  ScaffoldMessengerKeyRef ref,
) {
  return GlobalKey();
}
