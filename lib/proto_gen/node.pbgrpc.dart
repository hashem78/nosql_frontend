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

  $async.Future<$0.GetNodeStateResponse> getNodeState($grpc.ServiceCall call, $0.GetNodeStateRequest request);
  $async.Future<$0.CollectionMetaData> createCollection($grpc.ServiceCall call, $0.CreateCollectionRequest request);
  $async.Future<$0.GetCollectionsResponse> getCollections($grpc.ServiceCall call, $0.GetCollectionsRequest request);
  $async.Stream<$0.CollectionDocument> getCollectionDocuments($grpc.ServiceCall call, $0.GetCollectionDocumentsRequest request);
}