//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use collectionMetaDataDescriptor instead')
const CollectionMetaData$json = {
  '1': 'CollectionMetaData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'created_on', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdOn'},
    {'1': 'deleted', '3': 4, '4': 1, '5': 8, '10': 'deleted'},
    {'1': 'indexed_properties', '3': 5, '4': 3, '5': 9, '10': 'indexedProperties'},
  ],
};

/// Descriptor for `CollectionMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionMetaDataDescriptor = $convert.base64Decode(
    'ChJDb2xsZWN0aW9uTWV0YURhdGESDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USOQoKY3JlYXRlZF9vbhgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0'
    'ZWRPbhIYCgdkZWxldGVkGAQgASgIUgdkZWxldGVkEi0KEmluZGV4ZWRfcHJvcGVydGllcxgFIA'
    'MoCVIRaW5kZXhlZFByb3BlcnRpZXM=');

@$core.Deprecated('Use setCollectionDocumentRequestDescriptor instead')
const SetCollectionDocumentRequest$json = {
  '1': 'SetCollectionDocumentRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'document_id', '3': 2, '4': 1, '5': 9, '10': 'documentId'},
    {'1': 'document', '3': 3, '4': 1, '5': 9, '10': 'document'},
  ],
};

/// Descriptor for `SetCollectionDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCollectionDocumentRequestDescriptor = $convert.base64Decode(
    'ChxTZXRDb2xsZWN0aW9uRG9jdW1lbnRSZXF1ZXN0EiMKDWNvbGxlY3Rpb25faWQYASABKAlSDG'
    'NvbGxlY3Rpb25JZBIfCgtkb2N1bWVudF9pZBgCIAEoCVIKZG9jdW1lbnRJZBIaCghkb2N1bWVu'
    'dBgDIAEoCVIIZG9jdW1lbnQ=');

@$core.Deprecated('Use documentMetaDataDescriptor instead')
const DocumentMetaData$json = {
  '1': 'DocumentMetaData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'affinity', '3': 2, '4': 1, '5': 5, '10': 'affinity'},
    {'1': 'created_on', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdOn'},
    {'1': 'last_edited_on', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastEditedOn'},
    {'1': 'deleted', '3': 5, '4': 1, '5': 8, '10': 'deleted'},
  ],
};

/// Descriptor for `DocumentMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentMetaDataDescriptor = $convert.base64Decode(
    'ChBEb2N1bWVudE1ldGFEYXRhEg4KAmlkGAEgASgJUgJpZBIaCghhZmZpbml0eRgCIAEoBVIIYW'
    'ZmaW5pdHkSOQoKY3JlYXRlZF9vbhgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBS'
    'CWNyZWF0ZWRPbhJACg5sYXN0X2VkaXRlZF9vbhgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW'
    '1lc3RhbXBSDGxhc3RFZGl0ZWRPbhIYCgdkZWxldGVkGAUgASgIUgdkZWxldGVk');

@$core.Deprecated('Use collectionDocumentDescriptor instead')
const CollectionDocument$json = {
  '1': 'CollectionDocument',
  '2': [
    {'1': 'meta_data', '3': 1, '4': 1, '5': 11, '6': '.DocumentMetaData', '10': 'metaData'},
    {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `CollectionDocument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDocumentDescriptor = $convert.base64Decode(
    'ChJDb2xsZWN0aW9uRG9jdW1lbnQSLgoJbWV0YV9kYXRhGAEgASgLMhEuRG9jdW1lbnRNZXRhRG'
    'F0YVIIbWV0YURhdGESEgoEZGF0YRgCIAEoCVIEZGF0YQ==');

@$core.Deprecated('Use setCollectionDocumentResponseDescriptor instead')
const SetCollectionDocumentResponse$json = {
  '1': 'SetCollectionDocumentResponse',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 11, '6': '.CollectionDocument', '10': 'document'},
  ],
};

/// Descriptor for `SetCollectionDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCollectionDocumentResponseDescriptor = $convert.base64Decode(
    'Ch1TZXRDb2xsZWN0aW9uRG9jdW1lbnRSZXNwb25zZRIvCghkb2N1bWVudBgBIAEoCzITLkNvbG'
    'xlY3Rpb25Eb2N1bWVudFIIZG9jdW1lbnQ=');

