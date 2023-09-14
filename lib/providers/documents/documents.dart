import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'documents.g.dart';

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
Stream<CollectionDocument> documents(DocumentsRef ref, String collectionId) {
  final nodeService = ref.watch(nodeServiceProvider);
  return nodeService.getCollectionDocuments(
    GetCollectionDocumentsRequest(collectionId: collectionId),
  );
}
