//
//  Generated code. Do not modify.
//  source: signaling.proto
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

import 'signaling.pb.dart' as $3;

export 'signaling.pb.dart';

@$pb.GrpcServiceName('bootstrap.SignalingService')
class SignalingServiceClient extends $grpc.Client {
  static final _$joinMeshStream = $grpc.ClientMethod<$3.PortContainingMessage, $3.PortContainingMessage>(
      '/bootstrap.SignalingService/JoinMeshStream',
      ($3.PortContainingMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PortContainingMessage.fromBuffer(value));
  static final _$discoverLoad = $grpc.ClientMethod<$3.LoadDiscoveryRequest, $3.LoadDiscoveryResponse>(
      '/bootstrap.SignalingService/DiscoverLoad',
      ($3.LoadDiscoveryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.LoadDiscoveryResponse.fromBuffer(value));
  static final _$getAvailableNodes = $grpc.ClientMethod<$3.GetAvailableNodesRequest, $3.GetAvailableNodesResponse>(
      '/bootstrap.SignalingService/GetAvailableNodes',
      ($3.GetAvailableNodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetAvailableNodesResponse.fromBuffer(value));

  SignalingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$3.PortContainingMessage> joinMeshStream($3.PortContainingMessage request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$joinMeshStream, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$3.LoadDiscoveryResponse> discoverLoad($3.LoadDiscoveryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$discoverLoad, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetAvailableNodesResponse> getAvailableNodes($3.GetAvailableNodesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAvailableNodes, request, options: options);
  }
}

@$pb.GrpcServiceName('bootstrap.SignalingService')
abstract class SignalingServiceBase extends $grpc.Service {
  $core.String get $name => 'bootstrap.SignalingService';

  SignalingServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.PortContainingMessage, $3.PortContainingMessage>(
        'JoinMeshStream',
        joinMeshStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.PortContainingMessage.fromBuffer(value),
        ($3.PortContainingMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.LoadDiscoveryRequest, $3.LoadDiscoveryResponse>(
        'DiscoverLoad',
        discoverLoad_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.LoadDiscoveryRequest.fromBuffer(value),
        ($3.LoadDiscoveryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetAvailableNodesRequest, $3.GetAvailableNodesResponse>(
        'GetAvailableNodes',
        getAvailableNodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetAvailableNodesRequest.fromBuffer(value),
        ($3.GetAvailableNodesResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$3.PortContainingMessage> joinMeshStream_Pre($grpc.ServiceCall call, $async.Future<$3.PortContainingMessage> request) async* {
    yield* joinMeshStream(call, await request);
  }

  $async.Future<$3.LoadDiscoveryResponse> discoverLoad_Pre($grpc.ServiceCall call, $async.Future<$3.LoadDiscoveryRequest> request) async {
    return discoverLoad(call, await request);
  }

  $async.Future<$3.GetAvailableNodesResponse> getAvailableNodes_Pre($grpc.ServiceCall call, $async.Future<$3.GetAvailableNodesRequest> request) async {
    return getAvailableNodes(call, await request);
  }

  $async.Stream<$3.PortContainingMessage> joinMeshStream($grpc.ServiceCall call, $3.PortContainingMessage request);
  $async.Future<$3.LoadDiscoveryResponse> discoverLoad($grpc.ServiceCall call, $3.LoadDiscoveryRequest request);
  $async.Future<$3.GetAvailableNodesResponse> getAvailableNodes($grpc.ServiceCall call, $3.GetAvailableNodesRequest request);
}
@$pb.GrpcServiceName('bootstrap.LoadBalancingService')
class LoadBalancingServiceClient extends $grpc.Client {
  static final _$discoverLoad = $grpc.ClientMethod<$3.LoadDiscoveryRequest, $3.LoadDiscoveryResponse>(
      '/bootstrap.LoadBalancingService/DiscoverLoad',
      ($3.LoadDiscoveryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.LoadDiscoveryResponse.fromBuffer(value));

  LoadBalancingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.LoadDiscoveryResponse> discoverLoad($3.LoadDiscoveryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$discoverLoad, request, options: options);
  }
}

@$pb.GrpcServiceName('bootstrap.LoadBalancingService')
abstract class LoadBalancingServiceBase extends $grpc.Service {
  $core.String get $name => 'bootstrap.LoadBalancingService';

  LoadBalancingServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.LoadDiscoveryRequest, $3.LoadDiscoveryResponse>(
        'DiscoverLoad',
        discoverLoad_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.LoadDiscoveryRequest.fromBuffer(value),
        ($3.LoadDiscoveryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.LoadDiscoveryResponse> discoverLoad_Pre($grpc.ServiceCall call, $async.Future<$3.LoadDiscoveryRequest> request) async {
    return discoverLoad(call, await request);
  }

  $async.Future<$3.LoadDiscoveryResponse> discoverLoad($grpc.ServiceCall call, $3.LoadDiscoveryRequest request);
}
