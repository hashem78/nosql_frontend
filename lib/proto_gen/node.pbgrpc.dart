//
//  Generated code. Do not modify.
//  source: node.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $2;
import 'node.pb.dart' as $1;

export 'node.pb.dart';

@$pb.GrpcServiceName('node.NodeService')
class NodeServiceClient extends $grpc.Client {
  static final _$getNodeState = $grpc.ClientMethod<$1.GetNodeStateRequest, $1.GetNodeStateResponse>(
      '/node.NodeService/GetNodeState',
      ($1.GetNodeStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetNodeStateResponse.fromBuffer(value));
  static final _$createCollection = $grpc.ClientMethod<$1.CreateCollectionRequest, $2.CollectionMetaData>(
      '/node.NodeService/CreateCollection',
      ($1.CreateCollectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CollectionMetaData.fromBuffer(value));
  static final _$getCollections = $grpc.ClientMethod<$1.GetCollectionsRequest, $1.GetCollectionsResponse>(
      '/node.NodeService/GetCollections',
      ($1.GetCollectionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetCollectionsResponse.fromBuffer(value));
  static final _$getCollectionDocuments = $grpc.ClientMethod<$1.GetCollectionDocumentsRequest, $2.CollectionDocument>(
      '/node.NodeService/GetCollectionDocuments',
      ($1.GetCollectionDocumentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CollectionDocument.fromBuffer(value));
  static final _$getCollectionDocument = $grpc.ClientMethod<$1.GetCollectionDocumentRequest, $2.CollectionDocument>(
      '/node.NodeService/GetCollectionDocument',
      ($1.GetCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CollectionDocument.fromBuffer(value));
  static final _$editCollection = $grpc.ClientMethod<$1.EditCollectionRequest, $1.EditCollectionResponse>(
      '/node.NodeService/EditCollection',
      ($1.EditCollectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EditCollectionResponse.fromBuffer(value));
  static final _$deleteCollection = $grpc.ClientMethod<$1.DeleteCollectionRequest, $1.DeleteCollectionResponse>(
      '/node.NodeService/DeleteCollection',
      ($1.DeleteCollectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteCollectionResponse.fromBuffer(value));
  static final _$getDocumentSample = $grpc.ClientMethod<$1.GetDocumentSampleRequest, $1.GetDocumentSampleResponse>(
      '/node.NodeService/GetDocumentSample',
      ($1.GetDocumentSampleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetDocumentSampleResponse.fromBuffer(value));
  static final _$setCollectionDocument = $grpc.ClientMethod<$2.SetCollectionDocumentRequest, $2.SetCollectionDocumentResponse>(
      '/node.NodeService/SetCollectionDocument',
      ($2.SetCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetCollectionDocumentResponse.fromBuffer(value));
  static final _$deleteCollectionDocument = $grpc.ClientMethod<$1.DeleteCollectionDocumentRequest, $1.DeleteCollectionDocumentResponse>(
      '/node.NodeService/DeleteCollectionDocument',
      ($1.DeleteCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteCollectionDocumentResponse.fromBuffer(value));
  static final _$clientHello = $grpc.ClientMethod<$1.ClientHelloRequest, $1.ClientHelloResponse>(
      '/node.NodeService/ClientHello',
      ($1.ClientHelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ClientHelloResponse.fromBuffer(value));
  static final _$indexCollectionProperty = $grpc.ClientMethod<$1.IndexCollectionPropertyRequest, $1.IndexCollectionPropertyResponse>(
      '/node.NodeService/IndexCollectionProperty',
      ($1.IndexCollectionPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.IndexCollectionPropertyResponse.fromBuffer(value));
  static final _$isPropertyIndexed = $grpc.ClientMethod<$1.IsPropertyIndexedRequest, $1.IsPropertyIndexedResponse>(
      '/node.NodeService/IsPropertyIndexed',
      ($1.IsPropertyIndexedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.IsPropertyIndexedResponse.fromBuffer(value));
  static final _$removeIndexFromCollectionProperty = $grpc.ClientMethod<$1.RemoveIndexFromCollectionPropertyRequest, $1.RemoveIndexFromCollectionPropertyResponse>(
      '/node.NodeService/RemoveIndexFromCollectionProperty',
      ($1.RemoveIndexFromCollectionPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RemoveIndexFromCollectionPropertyResponse.fromBuffer(value));
  static final _$getCollectionMetaData = $grpc.ClientMethod<$1.GetCollectionMetaDataRequest, $2.CollectionMetaData>(
      '/node.NodeService/GetCollectionMetaData',
      ($1.GetCollectionMetaDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CollectionMetaData.fromBuffer(value));
  static final _$queryDatabase = $grpc.ClientMethod<$1.QueryDatabaseRequest, $1.QueryDatabaseResponse>(
      '/node.NodeService/QueryDatabase',
      ($1.QueryDatabaseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryDatabaseResponse.fromBuffer(value));
  static final _$getPropertyType = $grpc.ClientMethod<$1.GetCollectionPropertyTypeRequest, $1.GetCollectionPropertyTypeResponse>(
      '/node.NodeService/GetPropertyType',
      ($1.GetCollectionPropertyTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetCollectionPropertyTypeResponse.fromBuffer(value));
  static final _$compoundIndex = $grpc.ClientMethod<$1.CompoundIndexRequest, $1.IndexCollectionPropertyResponse>(
      '/node.NodeService/CompoundIndex',
      ($1.CompoundIndexRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.IndexCollectionPropertyResponse.fromBuffer(value));
  static final _$compoundQuery = $grpc.ClientMethod<$1.CompoundIndexQueryRequest, $1.QueryDatabaseResponse>(
      '/node.NodeService/CompoundQuery',
      ($1.CompoundIndexQueryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryDatabaseResponse.fromBuffer(value));
  static final _$compoundQuerySync = $grpc.ClientMethod<$1.CompoundIndexQueryRequest, $1.CompoundIndexQueryResponse>(
      '/node.NodeService/CompoundQuerySync',
      ($1.CompoundIndexQueryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CompoundIndexQueryResponse.fromBuffer(value));
  static final _$removeCompoundIndex = $grpc.ClientMethod<$1.RemoveCompoundIndexRequest, $1.RemoveCompoundIndexResponse>(
      '/node.NodeService/RemoveCompoundIndex',
      ($1.RemoveCompoundIndexRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RemoveCompoundIndexResponse.fromBuffer(value));

  NodeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetNodeStateResponse> getNodeState($1.GetNodeStateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNodeState, request, options: options);
  }

  $grpc.ResponseFuture<$2.CollectionMetaData> createCollection($1.CreateCollectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCollection, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCollectionsResponse> getCollections($1.GetCollectionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollections, request, options: options);
  }

  $grpc.ResponseStream<$2.CollectionDocument> getCollectionDocuments($1.GetCollectionDocumentsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getCollectionDocuments, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$2.CollectionDocument> getCollectionDocument($1.GetCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollectionDocument, request, options: options);
  }

  $grpc.ResponseFuture<$1.EditCollectionResponse> editCollection($1.EditCollectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editCollection, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteCollectionResponse> deleteCollection($1.DeleteCollectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCollection, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetDocumentSampleResponse> getDocumentSample($1.GetDocumentSampleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDocumentSample, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetCollectionDocumentResponse> setCollectionDocument($2.SetCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCollectionDocument, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteCollectionDocumentResponse> deleteCollectionDocument($1.DeleteCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCollectionDocument, request, options: options);
  }

  $grpc.ResponseStream<$1.ClientHelloResponse> clientHello($async.Stream<$1.ClientHelloRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$clientHello, request, options: options);
  }

  $grpc.ResponseFuture<$1.IndexCollectionPropertyResponse> indexCollectionProperty($1.IndexCollectionPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$indexCollectionProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.IsPropertyIndexedResponse> isPropertyIndexed($1.IsPropertyIndexedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isPropertyIndexed, request, options: options);
  }

  $grpc.ResponseFuture<$1.RemoveIndexFromCollectionPropertyResponse> removeIndexFromCollectionProperty($1.RemoveIndexFromCollectionPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeIndexFromCollectionProperty, request, options: options);
  }

  $grpc.ResponseFuture<$2.CollectionMetaData> getCollectionMetaData($1.GetCollectionMetaDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollectionMetaData, request, options: options);
  }

  $grpc.ResponseStream<$1.QueryDatabaseResponse> queryDatabase($1.QueryDatabaseRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$queryDatabase, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.GetCollectionPropertyTypeResponse> getPropertyType($1.GetCollectionPropertyTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertyType, request, options: options);
  }

  $grpc.ResponseFuture<$1.IndexCollectionPropertyResponse> compoundIndex($1.CompoundIndexRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$compoundIndex, request, options: options);
  }

  $grpc.ResponseStream<$1.QueryDatabaseResponse> compoundQuery($1.CompoundIndexQueryRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$compoundQuery, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.CompoundIndexQueryResponse> compoundQuerySync($1.CompoundIndexQueryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$compoundQuerySync, request, options: options);
  }

  $grpc.ResponseFuture<$1.RemoveCompoundIndexResponse> removeCompoundIndex($1.RemoveCompoundIndexRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeCompoundIndex, request, options: options);
  }
}

@$pb.GrpcServiceName('node.NodeService')
abstract class NodeServiceBase extends $grpc.Service {
  $core.String get $name => 'node.NodeService';

  NodeServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetNodeStateRequest, $1.GetNodeStateResponse>(
        'GetNodeState',
        getNodeState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetNodeStateRequest.fromBuffer(value),
        ($1.GetNodeStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateCollectionRequest, $2.CollectionMetaData>(
        'CreateCollection',
        createCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateCollectionRequest.fromBuffer(value),
        ($2.CollectionMetaData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCollectionsRequest, $1.GetCollectionsResponse>(
        'GetCollections',
        getCollections_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetCollectionsRequest.fromBuffer(value),
        ($1.GetCollectionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCollectionDocumentsRequest, $2.CollectionDocument>(
        'GetCollectionDocuments',
        getCollectionDocuments_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.GetCollectionDocumentsRequest.fromBuffer(value),
        ($2.CollectionDocument value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCollectionDocumentRequest, $2.CollectionDocument>(
        'GetCollectionDocument',
        getCollectionDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetCollectionDocumentRequest.fromBuffer(value),
        ($2.CollectionDocument value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EditCollectionRequest, $1.EditCollectionResponse>(
        'EditCollection',
        editCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EditCollectionRequest.fromBuffer(value),
        ($1.EditCollectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteCollectionRequest, $1.DeleteCollectionResponse>(
        'DeleteCollection',
        deleteCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteCollectionRequest.fromBuffer(value),
        ($1.DeleteCollectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetDocumentSampleRequest, $1.GetDocumentSampleResponse>(
        'GetDocumentSample',
        getDocumentSample_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetDocumentSampleRequest.fromBuffer(value),
        ($1.GetDocumentSampleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SetCollectionDocumentRequest, $2.SetCollectionDocumentResponse>(
        'SetCollectionDocument',
        setCollectionDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SetCollectionDocumentRequest.fromBuffer(value),
        ($2.SetCollectionDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteCollectionDocumentRequest, $1.DeleteCollectionDocumentResponse>(
        'DeleteCollectionDocument',
        deleteCollectionDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteCollectionDocumentRequest.fromBuffer(value),
        ($1.DeleteCollectionDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ClientHelloRequest, $1.ClientHelloResponse>(
        'ClientHello',
        clientHello,
        true,
        true,
        ($core.List<$core.int> value) => $1.ClientHelloRequest.fromBuffer(value),
        ($1.ClientHelloResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IndexCollectionPropertyRequest, $1.IndexCollectionPropertyResponse>(
        'IndexCollectionProperty',
        indexCollectionProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IndexCollectionPropertyRequest.fromBuffer(value),
        ($1.IndexCollectionPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IsPropertyIndexedRequest, $1.IsPropertyIndexedResponse>(
        'IsPropertyIndexed',
        isPropertyIndexed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IsPropertyIndexedRequest.fromBuffer(value),
        ($1.IsPropertyIndexedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RemoveIndexFromCollectionPropertyRequest, $1.RemoveIndexFromCollectionPropertyResponse>(
        'RemoveIndexFromCollectionProperty',
        removeIndexFromCollectionProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RemoveIndexFromCollectionPropertyRequest.fromBuffer(value),
        ($1.RemoveIndexFromCollectionPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCollectionMetaDataRequest, $2.CollectionMetaData>(
        'GetCollectionMetaData',
        getCollectionMetaData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetCollectionMetaDataRequest.fromBuffer(value),
        ($2.CollectionMetaData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryDatabaseRequest, $1.QueryDatabaseResponse>(
        'QueryDatabase',
        queryDatabase_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.QueryDatabaseRequest.fromBuffer(value),
        ($1.QueryDatabaseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCollectionPropertyTypeRequest, $1.GetCollectionPropertyTypeResponse>(
        'GetPropertyType',
        getPropertyType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetCollectionPropertyTypeRequest.fromBuffer(value),
        ($1.GetCollectionPropertyTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CompoundIndexRequest, $1.IndexCollectionPropertyResponse>(
        'CompoundIndex',
        compoundIndex_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CompoundIndexRequest.fromBuffer(value),
        ($1.IndexCollectionPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CompoundIndexQueryRequest, $1.QueryDatabaseResponse>(
        'CompoundQuery',
        compoundQuery_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.CompoundIndexQueryRequest.fromBuffer(value),
        ($1.QueryDatabaseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CompoundIndexQueryRequest, $1.CompoundIndexQueryResponse>(
        'CompoundQuerySync',
        compoundQuerySync_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CompoundIndexQueryRequest.fromBuffer(value),
        ($1.CompoundIndexQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RemoveCompoundIndexRequest, $1.RemoveCompoundIndexResponse>(
        'RemoveCompoundIndex',
        removeCompoundIndex_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RemoveCompoundIndexRequest.fromBuffer(value),
        ($1.RemoveCompoundIndexResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetNodeStateResponse> getNodeState_Pre($grpc.ServiceCall call, $async.Future<$1.GetNodeStateRequest> request) async {
    return getNodeState(call, await request);
  }

  $async.Future<$2.CollectionMetaData> createCollection_Pre($grpc.ServiceCall call, $async.Future<$1.CreateCollectionRequest> request) async {
    return createCollection(call, await request);
  }

  $async.Future<$1.GetCollectionsResponse> getCollections_Pre($grpc.ServiceCall call, $async.Future<$1.GetCollectionsRequest> request) async {
    return getCollections(call, await request);
  }

  $async.Stream<$2.CollectionDocument> getCollectionDocuments_Pre($grpc.ServiceCall call, $async.Future<$1.GetCollectionDocumentsRequest> request) async* {
    yield* getCollectionDocuments(call, await request);
  }

  $async.Future<$2.CollectionDocument> getCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$1.GetCollectionDocumentRequest> request) async {
    return getCollectionDocument(call, await request);
  }

  $async.Future<$1.EditCollectionResponse> editCollection_Pre($grpc.ServiceCall call, $async.Future<$1.EditCollectionRequest> request) async {
    return editCollection(call, await request);
  }

  $async.Future<$1.DeleteCollectionResponse> deleteCollection_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteCollectionRequest> request) async {
    return deleteCollection(call, await request);
  }

  $async.Future<$1.GetDocumentSampleResponse> getDocumentSample_Pre($grpc.ServiceCall call, $async.Future<$1.GetDocumentSampleRequest> request) async {
    return getDocumentSample(call, await request);
  }

  $async.Future<$2.SetCollectionDocumentResponse> setCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$2.SetCollectionDocumentRequest> request) async {
    return setCollectionDocument(call, await request);
  }

  $async.Future<$1.DeleteCollectionDocumentResponse> deleteCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteCollectionDocumentRequest> request) async {
    return deleteCollectionDocument(call, await request);
  }

  $async.Future<$1.IndexCollectionPropertyResponse> indexCollectionProperty_Pre($grpc.ServiceCall call, $async.Future<$1.IndexCollectionPropertyRequest> request) async {
    return indexCollectionProperty(call, await request);
  }

  $async.Future<$1.IsPropertyIndexedResponse> isPropertyIndexed_Pre($grpc.ServiceCall call, $async.Future<$1.IsPropertyIndexedRequest> request) async {
    return isPropertyIndexed(call, await request);
  }

  $async.Future<$1.RemoveIndexFromCollectionPropertyResponse> removeIndexFromCollectionProperty_Pre($grpc.ServiceCall call, $async.Future<$1.RemoveIndexFromCollectionPropertyRequest> request) async {
    return removeIndexFromCollectionProperty(call, await request);
  }

  $async.Future<$2.CollectionMetaData> getCollectionMetaData_Pre($grpc.ServiceCall call, $async.Future<$1.GetCollectionMetaDataRequest> request) async {
    return getCollectionMetaData(call, await request);
  }

  $async.Stream<$1.QueryDatabaseResponse> queryDatabase_Pre($grpc.ServiceCall call, $async.Future<$1.QueryDatabaseRequest> request) async* {
    yield* queryDatabase(call, await request);
  }

  $async.Future<$1.GetCollectionPropertyTypeResponse> getPropertyType_Pre($grpc.ServiceCall call, $async.Future<$1.GetCollectionPropertyTypeRequest> request) async {
    return getPropertyType(call, await request);
  }

  $async.Future<$1.IndexCollectionPropertyResponse> compoundIndex_Pre($grpc.ServiceCall call, $async.Future<$1.CompoundIndexRequest> request) async {
    return compoundIndex(call, await request);
  }

  $async.Stream<$1.QueryDatabaseResponse> compoundQuery_Pre($grpc.ServiceCall call, $async.Future<$1.CompoundIndexQueryRequest> request) async* {
    yield* compoundQuery(call, await request);
  }

  $async.Future<$1.CompoundIndexQueryResponse> compoundQuerySync_Pre($grpc.ServiceCall call, $async.Future<$1.CompoundIndexQueryRequest> request) async {
    return compoundQuerySync(call, await request);
  }

  $async.Future<$1.RemoveCompoundIndexResponse> removeCompoundIndex_Pre($grpc.ServiceCall call, $async.Future<$1.RemoveCompoundIndexRequest> request) async {
    return removeCompoundIndex(call, await request);
  }

  $async.Future<$1.GetNodeStateResponse> getNodeState($grpc.ServiceCall call, $1.GetNodeStateRequest request);
  $async.Future<$2.CollectionMetaData> createCollection($grpc.ServiceCall call, $1.CreateCollectionRequest request);
  $async.Future<$1.GetCollectionsResponse> getCollections($grpc.ServiceCall call, $1.GetCollectionsRequest request);
  $async.Stream<$2.CollectionDocument> getCollectionDocuments($grpc.ServiceCall call, $1.GetCollectionDocumentsRequest request);
  $async.Future<$2.CollectionDocument> getCollectionDocument($grpc.ServiceCall call, $1.GetCollectionDocumentRequest request);
  $async.Future<$1.EditCollectionResponse> editCollection($grpc.ServiceCall call, $1.EditCollectionRequest request);
  $async.Future<$1.DeleteCollectionResponse> deleteCollection($grpc.ServiceCall call, $1.DeleteCollectionRequest request);
  $async.Future<$1.GetDocumentSampleResponse> getDocumentSample($grpc.ServiceCall call, $1.GetDocumentSampleRequest request);
  $async.Future<$2.SetCollectionDocumentResponse> setCollectionDocument($grpc.ServiceCall call, $2.SetCollectionDocumentRequest request);
  $async.Future<$1.DeleteCollectionDocumentResponse> deleteCollectionDocument($grpc.ServiceCall call, $1.DeleteCollectionDocumentRequest request);
  $async.Stream<$1.ClientHelloResponse> clientHello($grpc.ServiceCall call, $async.Stream<$1.ClientHelloRequest> request);
  $async.Future<$1.IndexCollectionPropertyResponse> indexCollectionProperty($grpc.ServiceCall call, $1.IndexCollectionPropertyRequest request);
  $async.Future<$1.IsPropertyIndexedResponse> isPropertyIndexed($grpc.ServiceCall call, $1.IsPropertyIndexedRequest request);
  $async.Future<$1.RemoveIndexFromCollectionPropertyResponse> removeIndexFromCollectionProperty($grpc.ServiceCall call, $1.RemoveIndexFromCollectionPropertyRequest request);
  $async.Future<$2.CollectionMetaData> getCollectionMetaData($grpc.ServiceCall call, $1.GetCollectionMetaDataRequest request);
  $async.Stream<$1.QueryDatabaseResponse> queryDatabase($grpc.ServiceCall call, $1.QueryDatabaseRequest request);
  $async.Future<$1.GetCollectionPropertyTypeResponse> getPropertyType($grpc.ServiceCall call, $1.GetCollectionPropertyTypeRequest request);
  $async.Future<$1.IndexCollectionPropertyResponse> compoundIndex($grpc.ServiceCall call, $1.CompoundIndexRequest request);
  $async.Stream<$1.QueryDatabaseResponse> compoundQuery($grpc.ServiceCall call, $1.CompoundIndexQueryRequest request);
  $async.Future<$1.CompoundIndexQueryResponse> compoundQuerySync($grpc.ServiceCall call, $1.CompoundIndexQueryRequest request);
  $async.Future<$1.RemoveCompoundIndexResponse> removeCompoundIndex($grpc.ServiceCall call, $1.RemoveCompoundIndexRequest request);
}
