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

import 'common.pb.dart' as $1;
import 'node.pb.dart' as $0;

export 'node.pb.dart';

@$pb.GrpcServiceName('node.NodeService')
class NodeServiceClient extends $grpc.Client {
  static final _$getNodeState = $grpc.ClientMethod<$0.GetNodeStateRequest, $0.GetNodeStateResponse>(
      '/node.NodeService/GetNodeState',
      ($0.GetNodeStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetNodeStateResponse.fromBuffer(value));
  static final _$createCollection = $grpc.ClientMethod<$0.CreateCollectionRequest, $1.CollectionMetaData>(
      '/node.NodeService/CreateCollection',
      ($0.CreateCollectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CollectionMetaData.fromBuffer(value));
  static final _$getCollections = $grpc.ClientMethod<$0.GetCollectionsRequest, $0.GetCollectionsResponse>(
      '/node.NodeService/GetCollections',
      ($0.GetCollectionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCollectionsResponse.fromBuffer(value));
  static final _$getCollectionDocuments = $grpc.ClientMethod<$0.GetCollectionDocumentsRequest, $1.CollectionDocument>(
      '/node.NodeService/GetCollectionDocuments',
      ($0.GetCollectionDocumentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CollectionDocument.fromBuffer(value));
  static final _$getCollectionDocument = $grpc.ClientMethod<$0.GetCollectionDocumentRequest, $1.CollectionDocument>(
      '/node.NodeService/GetCollectionDocument',
      ($0.GetCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CollectionDocument.fromBuffer(value));
  static final _$editCollection = $grpc.ClientMethod<$0.EditCollectionRequest, $0.EditCollectionResponse>(
      '/node.NodeService/EditCollection',
      ($0.EditCollectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditCollectionResponse.fromBuffer(value));
  static final _$deleteCollection = $grpc.ClientMethod<$0.DeleteCollectionRequest, $0.DeleteCollectionResponse>(
      '/node.NodeService/DeleteCollection',
      ($0.DeleteCollectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteCollectionResponse.fromBuffer(value));
  static final _$getDocumentSample = $grpc.ClientMethod<$0.GetDocumentSampleRequest, $0.GetDocumentSampleResponse>(
      '/node.NodeService/GetDocumentSample',
      ($0.GetDocumentSampleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDocumentSampleResponse.fromBuffer(value));
  static final _$setCollectionDocument = $grpc.ClientMethod<$1.SetCollectionDocumentRequest, $1.SetCollectionDocumentResponse>(
      '/node.NodeService/SetCollectionDocument',
      ($1.SetCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SetCollectionDocumentResponse.fromBuffer(value));
  static final _$deleteCollectionDocument = $grpc.ClientMethod<$0.DeleteCollectionDocumentRequest, $0.DeleteCollectionDocumentResponse>(
      '/node.NodeService/DeleteCollectionDocument',
      ($0.DeleteCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteCollectionDocumentResponse.fromBuffer(value));
  static final _$clientHello = $grpc.ClientMethod<$0.ClientHelloRequest, $0.ClientHelloResponse>(
      '/node.NodeService/ClientHello',
      ($0.ClientHelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ClientHelloResponse.fromBuffer(value));
  static final _$indexCollectionProperty = $grpc.ClientMethod<$0.IndexCollectionPropertyRequest, $0.IndexCollectionPropertyResponse>(
      '/node.NodeService/IndexCollectionProperty',
      ($0.IndexCollectionPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IndexCollectionPropertyResponse.fromBuffer(value));
  static final _$isPropertyIndexed = $grpc.ClientMethod<$0.IsPropertyIndexedRequest, $0.IsPropertyIndexedResponse>(
      '/node.NodeService/IsPropertyIndexed',
      ($0.IsPropertyIndexedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IsPropertyIndexedResponse.fromBuffer(value));
  static final _$removeIndexFromCollectionProperty = $grpc.ClientMethod<$0.RemoveIndexFromCollectionPropertyRequest, $0.RemoveIndexFromCollectionPropertyResponse>(
      '/node.NodeService/RemoveIndexFromCollectionProperty',
      ($0.RemoveIndexFromCollectionPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoveIndexFromCollectionPropertyResponse.fromBuffer(value));
  static final _$getCollectionMetaData = $grpc.ClientMethod<$0.GetCollectionMetaDataRequest, $1.CollectionMetaData>(
      '/node.NodeService/GetCollectionMetaData',
      ($0.GetCollectionMetaDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CollectionMetaData.fromBuffer(value));
  static final _$queryDatabase = $grpc.ClientMethod<$0.QueryDatabaseRequest, $0.QueryDatabaseResponse>(
      '/node.NodeService/QueryDatabase',
      ($0.QueryDatabaseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.QueryDatabaseResponse.fromBuffer(value));
  static final _$getPropertyType = $grpc.ClientMethod<$0.GetCollectionPropertyTypeRequest, $0.GetCollectionPropertyTypeResponse>(
      '/node.NodeService/GetPropertyType',
      ($0.GetCollectionPropertyTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCollectionPropertyTypeResponse.fromBuffer(value));

  NodeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetNodeStateResponse> getNodeState($0.GetNodeStateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNodeState, request, options: options);
  }

  $grpc.ResponseFuture<$1.CollectionMetaData> createCollection($0.CreateCollectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCollection, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCollectionsResponse> getCollections($0.GetCollectionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollections, request, options: options);
  }

  $grpc.ResponseStream<$1.CollectionDocument> getCollectionDocuments($0.GetCollectionDocumentsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getCollectionDocuments, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.CollectionDocument> getCollectionDocument($0.GetCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollectionDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditCollectionResponse> editCollection($0.EditCollectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editCollection, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCollectionResponse> deleteCollection($0.DeleteCollectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCollection, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDocumentSampleResponse> getDocumentSample($0.GetDocumentSampleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDocumentSample, request, options: options);
  }

  $grpc.ResponseFuture<$1.SetCollectionDocumentResponse> setCollectionDocument($1.SetCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCollectionDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCollectionDocumentResponse> deleteCollectionDocument($0.DeleteCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCollectionDocument, request, options: options);
  }

  $grpc.ResponseStream<$0.ClientHelloResponse> clientHello($async.Stream<$0.ClientHelloRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$clientHello, request, options: options);
  }

  $grpc.ResponseFuture<$0.IndexCollectionPropertyResponse> indexCollectionProperty($0.IndexCollectionPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$indexCollectionProperty, request, options: options);
  }

  $grpc.ResponseFuture<$0.IsPropertyIndexedResponse> isPropertyIndexed($0.IsPropertyIndexedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isPropertyIndexed, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveIndexFromCollectionPropertyResponse> removeIndexFromCollectionProperty($0.RemoveIndexFromCollectionPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeIndexFromCollectionProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.CollectionMetaData> getCollectionMetaData($0.GetCollectionMetaDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollectionMetaData, request, options: options);
  }

  $grpc.ResponseStream<$0.QueryDatabaseResponse> queryDatabase($0.QueryDatabaseRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$queryDatabase, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.GetCollectionPropertyTypeResponse> getPropertyType($0.GetCollectionPropertyTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertyType, request, options: options);
  }
}

@$pb.GrpcServiceName('node.NodeService')
abstract class NodeServiceBase extends $grpc.Service {
  $core.String get $name => 'node.NodeService';

  NodeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetNodeStateRequest, $0.GetNodeStateResponse>(
        'GetNodeState',
        getNodeState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNodeStateRequest.fromBuffer(value),
        ($0.GetNodeStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateCollectionRequest, $1.CollectionMetaData>(
        'CreateCollection',
        createCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateCollectionRequest.fromBuffer(value),
        ($1.CollectionMetaData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCollectionsRequest, $0.GetCollectionsResponse>(
        'GetCollections',
        getCollections_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCollectionsRequest.fromBuffer(value),
        ($0.GetCollectionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCollectionDocumentsRequest, $1.CollectionDocument>(
        'GetCollectionDocuments',
        getCollectionDocuments_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GetCollectionDocumentsRequest.fromBuffer(value),
        ($1.CollectionDocument value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCollectionDocumentRequest, $1.CollectionDocument>(
        'GetCollectionDocument',
        getCollectionDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCollectionDocumentRequest.fromBuffer(value),
        ($1.CollectionDocument value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditCollectionRequest, $0.EditCollectionResponse>(
        'EditCollection',
        editCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditCollectionRequest.fromBuffer(value),
        ($0.EditCollectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCollectionRequest, $0.DeleteCollectionResponse>(
        'DeleteCollection',
        deleteCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteCollectionRequest.fromBuffer(value),
        ($0.DeleteCollectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDocumentSampleRequest, $0.GetDocumentSampleResponse>(
        'GetDocumentSample',
        getDocumentSample_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDocumentSampleRequest.fromBuffer(value),
        ($0.GetDocumentSampleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetCollectionDocumentRequest, $1.SetCollectionDocumentResponse>(
        'SetCollectionDocument',
        setCollectionDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetCollectionDocumentRequest.fromBuffer(value),
        ($1.SetCollectionDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCollectionDocumentRequest, $0.DeleteCollectionDocumentResponse>(
        'DeleteCollectionDocument',
        deleteCollectionDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteCollectionDocumentRequest.fromBuffer(value),
        ($0.DeleteCollectionDocumentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClientHelloRequest, $0.ClientHelloResponse>(
        'ClientHello',
        clientHello,
        true,
        true,
        ($core.List<$core.int> value) => $0.ClientHelloRequest.fromBuffer(value),
        ($0.ClientHelloResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IndexCollectionPropertyRequest, $0.IndexCollectionPropertyResponse>(
        'IndexCollectionProperty',
        indexCollectionProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IndexCollectionPropertyRequest.fromBuffer(value),
        ($0.IndexCollectionPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IsPropertyIndexedRequest, $0.IsPropertyIndexedResponse>(
        'IsPropertyIndexed',
        isPropertyIndexed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IsPropertyIndexedRequest.fromBuffer(value),
        ($0.IsPropertyIndexedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveIndexFromCollectionPropertyRequest, $0.RemoveIndexFromCollectionPropertyResponse>(
        'RemoveIndexFromCollectionProperty',
        removeIndexFromCollectionProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveIndexFromCollectionPropertyRequest.fromBuffer(value),
        ($0.RemoveIndexFromCollectionPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCollectionMetaDataRequest, $1.CollectionMetaData>(
        'GetCollectionMetaData',
        getCollectionMetaData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCollectionMetaDataRequest.fromBuffer(value),
        ($1.CollectionMetaData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryDatabaseRequest, $0.QueryDatabaseResponse>(
        'QueryDatabase',
        queryDatabase_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.QueryDatabaseRequest.fromBuffer(value),
        ($0.QueryDatabaseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCollectionPropertyTypeRequest, $0.GetCollectionPropertyTypeResponse>(
        'GetPropertyType',
        getPropertyType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCollectionPropertyTypeRequest.fromBuffer(value),
        ($0.GetCollectionPropertyTypeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetNodeStateResponse> getNodeState_Pre($grpc.ServiceCall call, $async.Future<$0.GetNodeStateRequest> request) async {
    return getNodeState(call, await request);
  }

  $async.Future<$1.CollectionMetaData> createCollection_Pre($grpc.ServiceCall call, $async.Future<$0.CreateCollectionRequest> request) async {
    return createCollection(call, await request);
  }

  $async.Future<$0.GetCollectionsResponse> getCollections_Pre($grpc.ServiceCall call, $async.Future<$0.GetCollectionsRequest> request) async {
    return getCollections(call, await request);
  }

  $async.Stream<$1.CollectionDocument> getCollectionDocuments_Pre($grpc.ServiceCall call, $async.Future<$0.GetCollectionDocumentsRequest> request) async* {
    yield* getCollectionDocuments(call, await request);
  }

  $async.Future<$1.CollectionDocument> getCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$0.GetCollectionDocumentRequest> request) async {
    return getCollectionDocument(call, await request);
  }

  $async.Future<$0.EditCollectionResponse> editCollection_Pre($grpc.ServiceCall call, $async.Future<$0.EditCollectionRequest> request) async {
    return editCollection(call, await request);
  }

  $async.Future<$0.DeleteCollectionResponse> deleteCollection_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteCollectionRequest> request) async {
    return deleteCollection(call, await request);
  }

  $async.Future<$0.GetDocumentSampleResponse> getDocumentSample_Pre($grpc.ServiceCall call, $async.Future<$0.GetDocumentSampleRequest> request) async {
    return getDocumentSample(call, await request);
  }

  $async.Future<$1.SetCollectionDocumentResponse> setCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$1.SetCollectionDocumentRequest> request) async {
    return setCollectionDocument(call, await request);
  }

  $async.Future<$0.DeleteCollectionDocumentResponse> deleteCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteCollectionDocumentRequest> request) async {
    return deleteCollectionDocument(call, await request);
  }

  $async.Future<$0.IndexCollectionPropertyResponse> indexCollectionProperty_Pre($grpc.ServiceCall call, $async.Future<$0.IndexCollectionPropertyRequest> request) async {
    return indexCollectionProperty(call, await request);
  }

  $async.Future<$0.IsPropertyIndexedResponse> isPropertyIndexed_Pre($grpc.ServiceCall call, $async.Future<$0.IsPropertyIndexedRequest> request) async {
    return isPropertyIndexed(call, await request);
  }

  $async.Future<$0.RemoveIndexFromCollectionPropertyResponse> removeIndexFromCollectionProperty_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveIndexFromCollectionPropertyRequest> request) async {
    return removeIndexFromCollectionProperty(call, await request);
  }

  $async.Future<$1.CollectionMetaData> getCollectionMetaData_Pre($grpc.ServiceCall call, $async.Future<$0.GetCollectionMetaDataRequest> request) async {
    return getCollectionMetaData(call, await request);
  }

  $async.Stream<$0.QueryDatabaseResponse> queryDatabase_Pre($grpc.ServiceCall call, $async.Future<$0.QueryDatabaseRequest> request) async* {
    yield* queryDatabase(call, await request);
  }

  $async.Future<$0.GetCollectionPropertyTypeResponse> getPropertyType_Pre($grpc.ServiceCall call, $async.Future<$0.GetCollectionPropertyTypeRequest> request) async {
    return getPropertyType(call, await request);
  }

  $async.Future<$0.GetNodeStateResponse> getNodeState($grpc.ServiceCall call, $0.GetNodeStateRequest request);
  $async.Future<$1.CollectionMetaData> createCollection($grpc.ServiceCall call, $0.CreateCollectionRequest request);
  $async.Future<$0.GetCollectionsResponse> getCollections($grpc.ServiceCall call, $0.GetCollectionsRequest request);
  $async.Stream<$1.CollectionDocument> getCollectionDocuments($grpc.ServiceCall call, $0.GetCollectionDocumentsRequest request);
  $async.Future<$1.CollectionDocument> getCollectionDocument($grpc.ServiceCall call, $0.GetCollectionDocumentRequest request);
  $async.Future<$0.EditCollectionResponse> editCollection($grpc.ServiceCall call, $0.EditCollectionRequest request);
  $async.Future<$0.DeleteCollectionResponse> deleteCollection($grpc.ServiceCall call, $0.DeleteCollectionRequest request);
  $async.Future<$0.GetDocumentSampleResponse> getDocumentSample($grpc.ServiceCall call, $0.GetDocumentSampleRequest request);
  $async.Future<$1.SetCollectionDocumentResponse> setCollectionDocument($grpc.ServiceCall call, $1.SetCollectionDocumentRequest request);
  $async.Future<$0.DeleteCollectionDocumentResponse> deleteCollectionDocument($grpc.ServiceCall call, $0.DeleteCollectionDocumentRequest request);
  $async.Stream<$0.ClientHelloResponse> clientHello($grpc.ServiceCall call, $async.Stream<$0.ClientHelloRequest> request);
  $async.Future<$0.IndexCollectionPropertyResponse> indexCollectionProperty($grpc.ServiceCall call, $0.IndexCollectionPropertyRequest request);
  $async.Future<$0.IsPropertyIndexedResponse> isPropertyIndexed($grpc.ServiceCall call, $0.IsPropertyIndexedRequest request);
  $async.Future<$0.RemoveIndexFromCollectionPropertyResponse> removeIndexFromCollectionProperty($grpc.ServiceCall call, $0.RemoveIndexFromCollectionPropertyRequest request);
  $async.Future<$1.CollectionMetaData> getCollectionMetaData($grpc.ServiceCall call, $0.GetCollectionMetaDataRequest request);
  $async.Stream<$0.QueryDatabaseResponse> queryDatabase($grpc.ServiceCall call, $0.QueryDatabaseRequest request);
  $async.Future<$0.GetCollectionPropertyTypeResponse> getPropertyType($grpc.ServiceCall call, $0.GetCollectionPropertyTypeRequest request);
}
