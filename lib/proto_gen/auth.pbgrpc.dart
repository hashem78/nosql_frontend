//
//  Generated code. Do not modify.
//  source: auth.proto
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

import 'auth.pb.dart' as $0;

export 'auth.pb.dart';

@$pb.GrpcServiceName('auth.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$registerUser = $grpc.ClientMethod<$0.UserRegistrationRequest, $0.User>(
      '/auth.AuthService/RegisterUser',
      ($0.UserRegistrationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getCredentials = $grpc.ClientMethod<$0.GetUserCredentialsRequest, $0.User>(
      '/auth.AuthService/GetCredentials',
      ($0.GetUserCredentialsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$authenticateUser = $grpc.ClientMethod<$0.UserAuthenticationRequest, $0.UserAuthenticationResponse>(
      '/auth.AuthService/AuthenticateUser',
      ($0.UserAuthenticationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserAuthenticationResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> registerUser($0.UserRegistrationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> getCredentials($0.GetUserCredentialsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCredentials, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserAuthenticationResponse> authenticateUser($0.UserAuthenticationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('auth.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserRegistrationRequest, $0.User>(
        'RegisterUser',
        registerUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRegistrationRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserCredentialsRequest, $0.User>(
        'GetCredentials',
        getCredentials_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserCredentialsRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserAuthenticationRequest, $0.UserAuthenticationResponse>(
        'AuthenticateUser',
        authenticateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserAuthenticationRequest.fromBuffer(value),
        ($0.UserAuthenticationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> registerUser_Pre($grpc.ServiceCall call, $async.Future<$0.UserRegistrationRequest> request) async {
    return registerUser(call, await request);
  }

  $async.Future<$0.User> getCredentials_Pre($grpc.ServiceCall call, $async.Future<$0.GetUserCredentialsRequest> request) async {
    return getCredentials(call, await request);
  }

  $async.Future<$0.UserAuthenticationResponse> authenticateUser_Pre($grpc.ServiceCall call, $async.Future<$0.UserAuthenticationRequest> request) async {
    return authenticateUser(call, await request);
  }

  $async.Future<$0.User> registerUser($grpc.ServiceCall call, $0.UserRegistrationRequest request);
  $async.Future<$0.User> getCredentials($grpc.ServiceCall call, $0.GetUserCredentialsRequest request);
  $async.Future<$0.UserAuthenticationResponse> authenticateUser($grpc.ServiceCall call, $0.UserAuthenticationRequest request);
}
