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

import 'signaling.pb.dart' as $1;

export 'signaling.pb.dart';

@$pb.GrpcServiceName('bootstrap.SignalingService')
class SignalingServiceClient extends $grpc.Client {
  static final _$joinMeshStream = $grpc.ClientMethod<$1.PortContainingMessage, $1.PortContainingMessage>(
      '/bootstrap.SignalingService/JoinMeshStream',
      ($1.PortContainingMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PortContainingMessage.fromBuffer(value));
  static final _$discoverLoad = $grpc.ClientMethod<$1.LoadDiscoveryRequest, $1.LoadDiscoveryResponse>(
      '/bootstrap.SignalingService/DiscoverLoad',
      ($1.LoadDiscoveryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LoadDiscoveryResponse.fromBuffer(value));

  SignalingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$1.PortContainingMessage> joinMeshStream($1.PortContainingMessage request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$joinMeshStream, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.LoadDiscoveryResponse> discoverLoad($1.LoadDiscoveryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$discoverLoad, request, options: options);
  }
}

@$pb.GrpcServiceName('bootstrap.SignalingService')
abstract class SignalingServiceBase extends $grpc.Service {
  $core.String get $name => 'bootstrap.SignalingService';

  SignalingServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.PortContainingMessage, $1.PortContainingMessage>(
        'JoinMeshStream',
        joinMeshStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.PortContainingMessage.fromBuffer(value),
        ($1.PortContainingMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LoadDiscoveryRequest, $1.LoadDiscoveryResponse>(
        'DiscoverLoad',
        discoverLoad_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoadDiscoveryRequest.fromBuffer(value),
        ($1.LoadDiscoveryResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$1.PortContainingMessage> joinMeshStream_Pre($grpc.ServiceCall call, $async.Future<$1.PortContainingMessage> request) async* {
    yield* joinMeshStream(call, await request);
  }

  $async.Future<$1.LoadDiscoveryResponse> discoverLoad_Pre($grpc.ServiceCall call, $async.Future<$1.LoadDiscoveryRequest> request) async {
    return discoverLoad(call, await request);
  }

  $async.Stream<$1.PortContainingMessage> joinMeshStream($grpc.ServiceCall call, $1.PortContainingMessage request);
  $async.Future<$1.LoadDiscoveryResponse> discoverLoad($grpc.ServiceCall call, $1.LoadDiscoveryRequest request);
}
@$pb.GrpcServiceName('bootstrap.LoadBalancingService')
class LoadBalancingServiceClient extends $grpc.Client {
  static final _$discoverLoad = $grpc.ClientMethod<$1.LoadDiscoveryRequest, $1.LoadDiscoveryResponse>(
      '/bootstrap.LoadBalancingService/DiscoverLoad',
      ($1.LoadDiscoveryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LoadDiscoveryResponse.fromBuffer(value));

  LoadBalancingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.LoadDiscoveryResponse> discoverLoad($1.LoadDiscoveryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$discoverLoad, request, options: options);
  }
}

@$pb.GrpcServiceName('bootstrap.LoadBalancingService')
abstract class LoadBalancingServiceBase extends $grpc.Service {
  $core.String get $name => 'bootstrap.LoadBalancingService';

  LoadBalancingServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.LoadDiscoveryRequest, $1.LoadDiscoveryResponse>(
        'DiscoverLoad',
        discoverLoad_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoadDiscoveryRequest.fromBuffer(value),
        ($1.LoadDiscoveryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.LoadDiscoveryResponse> discoverLoad_Pre($grpc.ServiceCall call, $async.Future<$1.LoadDiscoveryRequest> request) async {
    return discoverLoad(call, await request);
  }

  $async.Future<$1.LoadDiscoveryResponse> discoverLoad($grpc.ServiceCall call, $1.LoadDiscoveryRequest request);
}
