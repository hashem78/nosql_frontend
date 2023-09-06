import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/proto_gen/signaling.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shared.g.dart';

@Riverpod(dependencies: [nodeService])
Future<GetCollectionsResponse> collections(CollectionsRef ref) async {
  final nodeService = ref.watch(nodeServiceProvider);
  return await nodeService.getCollections(GetCollectionsRequest());
}

@Riverpod(dependencies: [nodeService])
Stream<CollectionDocument> documents(DocumentsRef ref, String collectionName) {
  final nodeService = ref.watch(nodeServiceProvider);
  return nodeService.getCollectionDocuments(
    GetCollectionDocumentsRequest(collectionName: collectionName),
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

@Riverpod(dependencies: [])
GlobalKey<FormBuilderState> formBuilderKey(
  FormBuilderKeyRef ref,
) {
  return GlobalKey();
}

