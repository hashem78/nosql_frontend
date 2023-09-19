import 'dart:convert';

import 'package:nosql_frontend/proto_gen/common.pb.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collections.g.dart';

@Riverpod(dependencies: [nodeService])
Future<GetCollectionsResponse> collections(CollectionsRef ref) async {
  final nodeService = ref.watch(nodeServiceProvider);
  return await nodeService.getCollections(GetCollectionsRequest());
}

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
