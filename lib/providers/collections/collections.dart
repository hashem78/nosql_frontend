import 'dart:convert';

import 'package:nosql_frontend/proto_gen/common.pb.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/auth/auth.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collections.g.dart';

@Riverpod(dependencies: [nodeService, jwtToken])
Future<GetCollectionsResponse> collections(CollectionsRef ref) async {
  final nodeService = ref.watch(nodeServiceProvider);
  return await nodeService.getCollections(GetCollectionsRequest());
}

@Riverpod(dependencies: [nodeService, jwtToken])
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

@Riverpod(dependencies: [nodeService, jwtToken])
Future<CollectionMetaData> collectionMetaData(
  CollectionMetaDataRef ref,
  String collectionId,
) async {
  final nodeService = ref.watch(nodeServiceProvider);
  return await nodeService.getCollectionMetaData(
    GetCollectionMetaDataRequest(collectionId: collectionId),
  );
}

@Riverpod(dependencies: [nodeService, jwtToken])
Future<List<String>> compoundIndexes(
  CompoundIndexesRef ref,
  String collectionId,
) async {
  final nodeService = ref.watch(nodeServiceProvider);
  final metaData = await nodeService.getCollectionMetaData(
    GetCollectionMetaDataRequest(collectionId: collectionId),
  );
  return metaData.indexedCompoundProperties;
}
