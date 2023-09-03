//
//  Generated code. Do not modify.
//  source: node.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nodeStateDescriptor instead')
const NodeState$json = {
  '1': 'NodeState',
  '2': [
    {'1': 'HEAlTHY', '2': 0},
    {'1': 'WAITING', '2': 1},
    {'1': 'ERROR', '2': 2},
  ],
};

/// Descriptor for `NodeState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nodeStateDescriptor = $convert.base64Decode(
    'CglOb2RlU3RhdGUSCwoHSEVBbFRIWRAAEgsKB1dBSVRJTkcQARIJCgVFUlJPUhAC');

@$core.Deprecated('Use createCollectionRequestDescriptor instead')
const CreateCollectionRequest$json = {
  '1': 'CreateCollectionRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateCollectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCollectionRequestDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVDb2xsZWN0aW9uUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use collectionMetaDataDescriptor instead')
const CollectionMetaData$json = {
  '1': 'CollectionMetaData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'createdOn', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdOn'},
  ],
};

/// Descriptor for `CollectionMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionMetaDataDescriptor = $convert.base64Decode(
    'ChJDb2xsZWN0aW9uTWV0YURhdGESDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USOAoJY3JlYXRlZE9uGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRl'
    'ZE9u');

@$core.Deprecated('Use getNodeStateRequestDescriptor instead')
const GetNodeStateRequest$json = {
  '1': 'GetNodeStateRequest',
  '2': [
    {'1': 'sender', '3': 1, '4': 1, '5': 5, '10': 'sender'},
  ],
};

/// Descriptor for `GetNodeStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNodeStateRequestDescriptor = $convert.base64Decode(
    'ChNHZXROb2RlU3RhdGVSZXF1ZXN0EhYKBnNlbmRlchgBIAEoBVIGc2VuZGVy');

@$core.Deprecated('Use getNodeStateResponseDescriptor instead')
const GetNodeStateResponse$json = {
  '1': 'GetNodeStateResponse',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 5, '10': 'port'},
    {'1': 'nodeState', '3': 2, '4': 1, '5': 14, '6': '.node.NodeState', '10': 'nodeState'},
  ],
};

/// Descriptor for `GetNodeStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNodeStateResponseDescriptor = $convert.base64Decode(
    'ChRHZXROb2RlU3RhdGVSZXNwb25zZRISCgRwb3J0GAEgASgFUgRwb3J0Ei0KCW5vZGVTdGF0ZR'
    'gCIAEoDjIPLm5vZGUuTm9kZVN0YXRlUglub2RlU3RhdGU=');

