//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userAuthenticationResponseDescriptor instead')
const UserAuthenticationResponse$json = {
  '1': 'UserAuthenticationResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `UserAuthenticationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAuthenticationResponseDescriptor = $convert.base64Decode(
    'ChpVc2VyQXV0aGVudGljYXRpb25SZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4=');

@$core.Deprecated('Use userAuthenticationRequestDescriptor instead')
const UserAuthenticationRequest$json = {
  '1': 'UserAuthenticationRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UserAuthenticationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAuthenticationRequestDescriptor = $convert.base64Decode(
    'ChlVc2VyQXV0aGVudGljYXRpb25SZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYX'
    'Nzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use userRegistrationRequestDescriptor instead')
const UserRegistrationRequest$json = {
  '1': 'UserRegistrationRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UserRegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegistrationRequestDescriptor = $convert.base64Decode(
    'ChdVc2VyUmVnaXN0cmF0aW9uUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSGgoIcGFzc3'
    'dvcmQYAiABKAlSCHBhc3N3b3Jk');

@$core.Deprecated('Use getUserCredentialsRequestDescriptor instead')
const GetUserCredentialsRequest$json = {
  '1': 'GetUserCredentialsRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `GetUserCredentialsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserCredentialsRequestDescriptor = $convert.base64Decode(
    'ChlHZXRVc2VyQ3JlZGVudGlhbHNSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYX'
    'Nzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIUCgVlbWFpbBgCIAEoCVIFZW1haWw=');

