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

import 'node.pb.dart' as $0;

export 'node.pb.dart';

@$pb.GrpcServiceName('node.NodeService')
class NodeServiceClient extends $grpc.Client {
  static final _$getNodeState = $grpc.ClientMethod<$0.GetNodeStateRequest, $0.GetNodeStateResponse>(
      '/node.NodeService/GetNodeState',
      ($0.GetNodeStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetNodeStateResponse.fromBuffer(value));
  static final _$createCollection = $grpc.ClientMethod<$0.CreateCollectionRequest, $0.CollectionMetaData>(
      '/node.NodeService/CreateCollection',
      ($0.CreateCollectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CollectionMetaData.fromBuffer(value));
  static final _$getCollections = $grpc.ClientMethod<$0.GetCollectionsRequest, $0.GetCollectionsResponse>(
      '/node.NodeService/GetCollections',
      ($0.GetCollectionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCollectionsResponse.fromBuffer(value));
  static final _$getCollectionDocuments = $grpc.ClientMethod<$0.GetCollectionDocumentsRequest, $0.CollectionDocument>(
      '/node.NodeService/GetCollectionDocuments',
      ($0.GetCollectionDocumentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CollectionDocument.fromBuffer(value));
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
  static final _$setCollectionDocument = $grpc.ClientMethod<$0.SetCollectionDocumentRequest, $0.SetCollectionDocumentResponse>(
      '/node.NodeService/SetCollectionDocument',
      ($0.SetCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetCollectionDocumentResponse.fromBuffer(value));
  static final _$deleteCollectionDocument = $grpc.ClientMethod<$0.DeleteCollectionDocumentRequest, $0.DeleteCollectionDocumentResponse>(
      '/node.NodeService/DeleteCollectionDocument',
      ($0.DeleteCollectionDocumentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteCollectionDocumentResponse.fromBuffer(value));
  static final _$clientHello = $grpc.ClientMethod<$0.ClientHelloRequest, $0.ClientHelloResponse>(
      '/node.NodeService/ClientHello',
      ($0.ClientHelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ClientHelloResponse.fromBuffer(value));

  NodeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetNodeStateResponse> getNodeState($0.GetNodeStateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNodeState, request, options: options);
  }

  $grpc.ResponseFuture<$0.CollectionMetaData> createCollection($0.CreateCollectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCollection, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCollectionsResponse> getCollections($0.GetCollectionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollections, request, options: options);
  }

  $grpc.ResponseStream<$0.CollectionDocument> getCollectionDocuments($0.GetCollectionDocumentsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getCollectionDocuments, $async.Stream.fromIterable([request]), options: options);
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

  $grpc.ResponseFuture<$0.SetCollectionDocumentResponse> setCollectionDocument($0.SetCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCollectionDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCollectionDocumentResponse> deleteCollectionDocument($0.DeleteCollectionDocumentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCollectionDocument, request, options: options);
  }

  $grpc.ResponseStream<$0.ClientHelloResponse> clientHello($async.Stream<$0.ClientHelloRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$clientHello, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.CreateCollectionRequest, $0.CollectionMetaData>(
        'CreateCollection',
        createCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateCollectionRequest.fromBuffer(value),
        ($0.CollectionMetaData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCollectionsRequest, $0.GetCollectionsResponse>(
        'GetCollections',
        getCollections_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCollectionsRequest.fromBuffer(value),
        ($0.GetCollectionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCollectionDocumentsRequest, $0.CollectionDocument>(
        'GetCollectionDocuments',
        getCollectionDocuments_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GetCollectionDocumentsRequest.fromBuffer(value),
        ($0.CollectionDocument value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.SetCollectionDocumentRequest, $0.SetCollectionDocumentResponse>(
        'SetCollectionDocument',
        setCollectionDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetCollectionDocumentRequest.fromBuffer(value),
        ($0.SetCollectionDocumentResponse value) => value.writeToBuffer()));
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
  }

  $async.Future<$0.GetNodeStateResponse> getNodeState_Pre($grpc.ServiceCall call, $async.Future<$0.GetNodeStateRequest> request) async {
    return getNodeState(call, await request);
  }

  $async.Future<$0.CollectionMetaData> createCollection_Pre($grpc.ServiceCall call, $async.Future<$0.CreateCollectionRequest> request) async {
    return createCollection(call, await request);
  }

  $async.Future<$0.GetCollectionsResponse> getCollections_Pre($grpc.ServiceCall call, $async.Future<$0.GetCollectionsRequest> request) async {
    return getCollections(call, await request);
  }

  $async.Stream<$0.CollectionDocument> getCollectionDocuments_Pre($grpc.ServiceCall call, $async.Future<$0.GetCollectionDocumentsRequest> request) async* {
    yield* getCollectionDocuments(call, await request);
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

  $async.Future<$0.SetCollectionDocumentResponse> setCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$0.SetCollectionDocumentRequest> request) async {
    return setCollectionDocument(call, await request);
  }

  $async.Future<$0.DeleteCollectionDocumentResponse> deleteCollectionDocument_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteCollectionDocumentRequest> request) async {
    return deleteCollectionDocument(call, await request);
  }

  $async.Future<$0.GetNodeStateResponse> getNodeState($grpc.ServiceCall call, $0.GetNodeStateRequest request);
  $async.Future<$0.CollectionMetaData> createCollection($grpc.ServiceCall call, $0.CreateCollectionRequest request);
  $async.Future<$0.GetCollectionsResponse> getCollections($grpc.ServiceCall call, $0.GetCollectionsRequest request);
  $async.Stream<$0.CollectionDocument> getCollectionDocuments($grpc.ServiceCall call, $0.GetCollectionDocumentsRequest request);
  $async.Future<$0.EditCollectionResponse> editCollection($grpc.ServiceCall call, $0.EditCollectionRequest request);
  $async.Future<$0.DeleteCollectionResponse> deleteCollection($grpc.ServiceCall call, $0.DeleteCollectionRequest request);
  $async.Future<$0.GetDocumentSampleResponse> getDocumentSample($grpc.ServiceCall call, $0.GetDocumentSampleRequest request);
  $async.Future<$0.SetCollectionDocumentResponse> setCollectionDocument($grpc.ServiceCall call, $0.SetCollectionDocumentRequest request);
  $async.Future<$0.DeleteCollectionDocumentResponse> deleteCollectionDocument($grpc.ServiceCall call, $0.DeleteCollectionDocumentRequest request);
  $async.Stream<$0.ClientHelloResponse> clientHello($grpc.ServiceCall call, $async.Stream<$0.ClientHelloRequest> request);
}
