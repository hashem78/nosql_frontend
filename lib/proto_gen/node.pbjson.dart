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

@$core.Deprecated('Use getCollectionDocumentsRequestDescriptor instead')
const GetCollectionDocumentsRequest$json = {
  '1': 'GetCollectionDocumentsRequest',
  '2': [
    {'1': 'collection_name', '3': 1, '4': 1, '5': 9, '10': 'collectionName'},
  ],
};

/// Descriptor for `GetCollectionDocumentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionDocumentsRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRDb2xsZWN0aW9uRG9jdW1lbnRzUmVxdWVzdBInCg9jb2xsZWN0aW9uX25hbWUYASABKA'
    'lSDmNvbGxlY3Rpb25OYW1l');

@$core.Deprecated('Use documentMetaDataDescriptor instead')
const DocumentMetaData$json = {
  '1': 'DocumentMetaData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'created_on', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdOn'},
  ],
};

/// Descriptor for `DocumentMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentMetaDataDescriptor = $convert.base64Decode(
    'ChBEb2N1bWVudE1ldGFEYXRhEg4KAmlkGAEgASgJUgJpZBI5CgpjcmVhdGVkX29uGAIgASgLMh'
    'ouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZE9u');

@$core.Deprecated('Use collectionDocumentDescriptor instead')
const CollectionDocument$json = {
  '1': 'CollectionDocument',
  '2': [
    {'1': 'meta_data', '3': 1, '4': 1, '5': 11, '6': '.node.DocumentMetaData', '10': 'metaData'},
    {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `CollectionDocument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDocumentDescriptor = $convert.base64Decode(
    'ChJDb2xsZWN0aW9uRG9jdW1lbnQSMwoJbWV0YV9kYXRhGAEgASgLMhYubm9kZS5Eb2N1bWVudE'
    '1ldGFEYXRhUghtZXRhRGF0YRISCgRkYXRhGAIgASgJUgRkYXRh');

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
    {'1': 'created_on', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdOn'},
  ],
};

/// Descriptor for `CollectionMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionMetaDataDescriptor = $convert.base64Decode(
    'ChJDb2xsZWN0aW9uTWV0YURhdGESDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USOQoKY3JlYXRlZF9vbhgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0'
    'ZWRPbg==');

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
    {'1': 'node_state', '3': 2, '4': 1, '5': 14, '6': '.node.NodeState', '10': 'nodeState'},
  ],
};

/// Descriptor for `GetNodeStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNodeStateResponseDescriptor = $convert.base64Decode(
    'ChRHZXROb2RlU3RhdGVSZXNwb25zZRISCgRwb3J0GAEgASgFUgRwb3J0Ei4KCm5vZGVfc3RhdG'
    'UYAiABKA4yDy5ub2RlLk5vZGVTdGF0ZVIJbm9kZVN0YXRl');

@$core.Deprecated('Use getCollectionsRequestDescriptor instead')
const GetCollectionsRequest$json = {
  '1': 'GetCollectionsRequest',
};

/// Descriptor for `GetCollectionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionsRequestDescriptor = $convert.base64Decode(
    'ChVHZXRDb2xsZWN0aW9uc1JlcXVlc3Q=');

@$core.Deprecated('Use getCollectionsResponseDescriptor instead')
const GetCollectionsResponse$json = {
  '1': 'GetCollectionsResponse',
  '2': [
    {'1': 'collections_meta_data', '3': 1, '4': 3, '5': 11, '6': '.node.CollectionMetaData', '10': 'collectionsMetaData'},
  ],
};

/// Descriptor for `GetCollectionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionsResponseDescriptor = $convert.base64Decode(
    'ChZHZXRDb2xsZWN0aW9uc1Jlc3BvbnNlEkwKFWNvbGxlY3Rpb25zX21ldGFfZGF0YRgBIAMoCz'
    'IYLm5vZGUuQ29sbGVjdGlvbk1ldGFEYXRhUhNjb2xsZWN0aW9uc01ldGFEYXRh');

