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

@$core.Deprecated('Use collectionPropertyTypeDescriptor instead')
const CollectionPropertyType$json = {
  '1': 'CollectionPropertyType',
  '2': [
    {'1': 'INTEGER', '2': 0},
    {'1': 'STRING', '2': 1},
  ],
};

/// Descriptor for `CollectionPropertyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List collectionPropertyTypeDescriptor = $convert.base64Decode(
    'ChZDb2xsZWN0aW9uUHJvcGVydHlUeXBlEgsKB0lOVEVHRVIQABIKCgZTVFJJTkcQAQ==');

@$core.Deprecated('Use operatorDescriptor instead')
const Operator$json = {
  '1': 'Operator',
  '2': [
    {'1': 'EQUALS', '2': 0},
    {'1': 'NOT_EQUALS', '2': 1},
    {'1': 'GREATER_THAN', '2': 2},
    {'1': 'LESS_THAN', '2': 3},
    {'1': 'GREATER_THAN_OR_EQUALS', '2': 4},
    {'1': 'LESS_THAN_OR_EQUALS', '2': 5},
    {'1': 'STARTS_WITH', '2': 6},
    {'1': 'IN', '2': 7},
    {'1': 'NOT_IN', '2': 8},
  ],
};

/// Descriptor for `Operator`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operatorDescriptor = $convert.base64Decode(
    'CghPcGVyYXRvchIKCgZFUVVBTFMQABIOCgpOT1RfRVFVQUxTEAESEAoMR1JFQVRFUl9USEFOEA'
    'ISDQoJTEVTU19USEFOEAMSGgoWR1JFQVRFUl9USEFOX09SX0VRVUFMUxAEEhcKE0xFU1NfVEhB'
    'Tl9PUl9FUVVBTFMQBRIPCgtTVEFSVFNfV0lUSBAGEgYKAklOEAcSCgoGTk9UX0lOEAg=');

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

@$core.Deprecated('Use getCollectionPropertyTypeRequestDescriptor instead')
const GetCollectionPropertyTypeRequest$json = {
  '1': 'GetCollectionPropertyTypeRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'property', '3': 2, '4': 1, '5': 9, '10': 'property'},
  ],
};

/// Descriptor for `GetCollectionPropertyTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionPropertyTypeRequestDescriptor = $convert.base64Decode(
    'CiBHZXRDb2xsZWN0aW9uUHJvcGVydHlUeXBlUmVxdWVzdBIjCg1jb2xsZWN0aW9uX2lkGAEgAS'
    'gJUgxjb2xsZWN0aW9uSWQSGgoIcHJvcGVydHkYAiABKAlSCHByb3BlcnR5');

@$core.Deprecated('Use getCollectionPropertyTypeResponseDescriptor instead')
const GetCollectionPropertyTypeResponse$json = {
  '1': 'GetCollectionPropertyTypeResponse',
  '2': [
    {'1': 'property_type', '3': 1, '4': 1, '5': 14, '6': '.node.CollectionPropertyType', '10': 'propertyType'},
  ],
};

/// Descriptor for `GetCollectionPropertyTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionPropertyTypeResponseDescriptor = $convert.base64Decode(
    'CiFHZXRDb2xsZWN0aW9uUHJvcGVydHlUeXBlUmVzcG9uc2USQQoNcHJvcGVydHlfdHlwZRgBIA'
    'EoDjIcLm5vZGUuQ29sbGVjdGlvblByb3BlcnR5VHlwZVIMcHJvcGVydHlUeXBl');

@$core.Deprecated('Use queryDatabaseRequestDescriptor instead')
const QueryDatabaseRequest$json = {
  '1': 'QueryDatabaseRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'property', '3': 2, '4': 1, '5': 9, '10': 'property'},
    {'1': 'operator', '3': 3, '4': 1, '5': 14, '6': '.node.Operator', '10': 'operator'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.CustomValue', '10': 'value'},
  ],
};

/// Descriptor for `QueryDatabaseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDatabaseRequestDescriptor = $convert.base64Decode(
    'ChRRdWVyeURhdGFiYXNlUmVxdWVzdBIjCg1jb2xsZWN0aW9uX2lkGAEgASgJUgxjb2xsZWN0aW'
    '9uSWQSGgoIcHJvcGVydHkYAiABKAlSCHByb3BlcnR5EioKCG9wZXJhdG9yGAMgASgOMg4ubm9k'
    'ZS5PcGVyYXRvclIIb3BlcmF0b3ISIgoFdmFsdWUYBCABKAsyDC5DdXN0b21WYWx1ZVIFdmFsdW'
    'U=');

@$core.Deprecated('Use queryDatabaseResponseDescriptor instead')
const QueryDatabaseResponse$json = {
  '1': 'QueryDatabaseResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `QueryDatabaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDatabaseResponseDescriptor = $convert.base64Decode(
    'ChVRdWVyeURhdGFiYXNlUmVzcG9uc2USEgoEZGF0YRgBIAEoCVIEZGF0YQ==');

@$core.Deprecated('Use getCollectionMetaDataRequestDescriptor instead')
const GetCollectionMetaDataRequest$json = {
  '1': 'GetCollectionMetaDataRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
  ],
};

/// Descriptor for `GetCollectionMetaDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionMetaDataRequestDescriptor = $convert.base64Decode(
    'ChxHZXRDb2xsZWN0aW9uTWV0YURhdGFSZXF1ZXN0EiMKDWNvbGxlY3Rpb25faWQYASABKAlSDG'
    'NvbGxlY3Rpb25JZA==');

@$core.Deprecated('Use removeIndexFromCollectionPropertyRequestDescriptor instead')
const RemoveIndexFromCollectionPropertyRequest$json = {
  '1': 'RemoveIndexFromCollectionPropertyRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'property', '3': 2, '4': 1, '5': 9, '10': 'property'},
  ],
};

/// Descriptor for `RemoveIndexFromCollectionPropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeIndexFromCollectionPropertyRequestDescriptor = $convert.base64Decode(
    'CihSZW1vdmVJbmRleEZyb21Db2xsZWN0aW9uUHJvcGVydHlSZXF1ZXN0EiMKDWNvbGxlY3Rpb2'
    '5faWQYASABKAlSDGNvbGxlY3Rpb25JZBIaCghwcm9wZXJ0eRgCIAEoCVIIcHJvcGVydHk=');

@$core.Deprecated('Use removeIndexFromCollectionPropertyResponseDescriptor instead')
const RemoveIndexFromCollectionPropertyResponse$json = {
  '1': 'RemoveIndexFromCollectionPropertyResponse',
};

/// Descriptor for `RemoveIndexFromCollectionPropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeIndexFromCollectionPropertyResponseDescriptor = $convert.base64Decode(
    'CilSZW1vdmVJbmRleEZyb21Db2xsZWN0aW9uUHJvcGVydHlSZXNwb25zZQ==');

@$core.Deprecated('Use isPropertyIndexedRequestDescriptor instead')
const IsPropertyIndexedRequest$json = {
  '1': 'IsPropertyIndexedRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'property', '3': 2, '4': 1, '5': 9, '10': 'property'},
  ],
};

/// Descriptor for `IsPropertyIndexedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isPropertyIndexedRequestDescriptor = $convert.base64Decode(
    'ChhJc1Byb3BlcnR5SW5kZXhlZFJlcXVlc3QSIwoNY29sbGVjdGlvbl9pZBgBIAEoCVIMY29sbG'
    'VjdGlvbklkEhoKCHByb3BlcnR5GAIgASgJUghwcm9wZXJ0eQ==');

@$core.Deprecated('Use isPropertyIndexedResponseDescriptor instead')
const IsPropertyIndexedResponse$json = {
  '1': 'IsPropertyIndexedResponse',
  '2': [
    {'1': 'isIndexed', '3': 1, '4': 1, '5': 8, '10': 'isIndexed'},
  ],
};

/// Descriptor for `IsPropertyIndexedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isPropertyIndexedResponseDescriptor = $convert.base64Decode(
    'ChlJc1Byb3BlcnR5SW5kZXhlZFJlc3BvbnNlEhwKCWlzSW5kZXhlZBgBIAEoCFIJaXNJbmRleG'
    'Vk');

@$core.Deprecated('Use indexCollectionPropertyRequestDescriptor instead')
const IndexCollectionPropertyRequest$json = {
  '1': 'IndexCollectionPropertyRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'property', '3': 2, '4': 1, '5': 9, '10': 'property'},
  ],
};

/// Descriptor for `IndexCollectionPropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexCollectionPropertyRequestDescriptor = $convert.base64Decode(
    'Ch5JbmRleENvbGxlY3Rpb25Qcm9wZXJ0eVJlcXVlc3QSIwoNY29sbGVjdGlvbl9pZBgBIAEoCV'
    'IMY29sbGVjdGlvbklkEhoKCHByb3BlcnR5GAIgASgJUghwcm9wZXJ0eQ==');

@$core.Deprecated('Use indexCollectionPropertyResponseDescriptor instead')
const IndexCollectionPropertyResponse$json = {
  '1': 'IndexCollectionPropertyResponse',
};

/// Descriptor for `IndexCollectionPropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexCollectionPropertyResponseDescriptor = $convert.base64Decode(
    'Ch9JbmRleENvbGxlY3Rpb25Qcm9wZXJ0eVJlc3BvbnNl');

@$core.Deprecated('Use clientHelloRequestDescriptor instead')
const ClientHelloRequest$json = {
  '1': 'ClientHelloRequest',
};

/// Descriptor for `ClientHelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientHelloRequestDescriptor = $convert.base64Decode(
    'ChJDbGllbnRIZWxsb1JlcXVlc3Q=');

@$core.Deprecated('Use clientHelloResponseDescriptor instead')
const ClientHelloResponse$json = {
  '1': 'ClientHelloResponse',
};

/// Descriptor for `ClientHelloResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientHelloResponseDescriptor = $convert.base64Decode(
    'ChNDbGllbnRIZWxsb1Jlc3BvbnNl');

@$core.Deprecated('Use deleteCollectionDocumentRequestDescriptor instead')
const DeleteCollectionDocumentRequest$json = {
  '1': 'DeleteCollectionDocumentRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'document_id', '3': 2, '4': 1, '5': 9, '10': 'documentId'},
  ],
};

/// Descriptor for `DeleteCollectionDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCollectionDocumentRequestDescriptor = $convert.base64Decode(
    'Ch9EZWxldGVDb2xsZWN0aW9uRG9jdW1lbnRSZXF1ZXN0EiMKDWNvbGxlY3Rpb25faWQYASABKA'
    'lSDGNvbGxlY3Rpb25JZBIfCgtkb2N1bWVudF9pZBgCIAEoCVIKZG9jdW1lbnRJZA==');

@$core.Deprecated('Use deleteCollectionDocumentResponseDescriptor instead')
const DeleteCollectionDocumentResponse$json = {
  '1': 'DeleteCollectionDocumentResponse',
};

/// Descriptor for `DeleteCollectionDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCollectionDocumentResponseDescriptor = $convert.base64Decode(
    'CiBEZWxldGVDb2xsZWN0aW9uRG9jdW1lbnRSZXNwb25zZQ==');

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

@$core.Deprecated('Use setCollectionDocumentResponseDescriptor instead')
const SetCollectionDocumentResponse$json = {
  '1': 'SetCollectionDocumentResponse',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 11, '6': '.node.CollectionDocument', '10': 'document'},
  ],
};

/// Descriptor for `SetCollectionDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCollectionDocumentResponseDescriptor = $convert.base64Decode(
    'Ch1TZXRDb2xsZWN0aW9uRG9jdW1lbnRSZXNwb25zZRI0Cghkb2N1bWVudBgBIAEoCzIYLm5vZG'
    'UuQ29sbGVjdGlvbkRvY3VtZW50Ughkb2N1bWVudA==');

@$core.Deprecated('Use getDocumentSampleRequestDescriptor instead')
const GetDocumentSampleRequest$json = {
  '1': 'GetDocumentSampleRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
  ],
};

/// Descriptor for `GetDocumentSampleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDocumentSampleRequestDescriptor = $convert.base64Decode(
    'ChhHZXREb2N1bWVudFNhbXBsZVJlcXVlc3QSIwoNY29sbGVjdGlvbl9pZBgBIAEoCVIMY29sbG'
    'VjdGlvbklk');

@$core.Deprecated('Use getDocumentSampleResponseDescriptor instead')
const GetDocumentSampleResponse$json = {
  '1': 'GetDocumentSampleResponse',
  '2': [
    {'1': 'document_sample', '3': 1, '4': 1, '5': 9, '10': 'documentSample'},
  ],
};

/// Descriptor for `GetDocumentSampleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDocumentSampleResponseDescriptor = $convert.base64Decode(
    'ChlHZXREb2N1bWVudFNhbXBsZVJlc3BvbnNlEicKD2RvY3VtZW50X3NhbXBsZRgBIAEoCVIOZG'
    '9jdW1lbnRTYW1wbGU=');

@$core.Deprecated('Use deleteCollectionRequestDescriptor instead')
const DeleteCollectionRequest$json = {
  '1': 'DeleteCollectionRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
  ],
};

/// Descriptor for `DeleteCollectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCollectionRequestDescriptor = $convert.base64Decode(
    'ChdEZWxldGVDb2xsZWN0aW9uUmVxdWVzdBIjCg1jb2xsZWN0aW9uX2lkGAEgASgJUgxjb2xsZW'
    'N0aW9uSWQ=');

@$core.Deprecated('Use deleteCollectionResponseDescriptor instead')
const DeleteCollectionResponse$json = {
  '1': 'DeleteCollectionResponse',
};

/// Descriptor for `DeleteCollectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCollectionResponseDescriptor = $convert.base64Decode(
    'ChhEZWxldGVDb2xsZWN0aW9uUmVzcG9uc2U=');

@$core.Deprecated('Use editCollectionRequestDescriptor instead')
const EditCollectionRequest$json = {
  '1': 'EditCollectionRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'collection_name', '3': 2, '4': 1, '5': 9, '10': 'collectionName'},
  ],
};

/// Descriptor for `EditCollectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editCollectionRequestDescriptor = $convert.base64Decode(
    'ChVFZGl0Q29sbGVjdGlvblJlcXVlc3QSIwoNY29sbGVjdGlvbl9pZBgBIAEoCVIMY29sbGVjdG'
    'lvbklkEicKD2NvbGxlY3Rpb25fbmFtZRgCIAEoCVIOY29sbGVjdGlvbk5hbWU=');

@$core.Deprecated('Use editCollectionResponseDescriptor instead')
const EditCollectionResponse$json = {
  '1': 'EditCollectionResponse',
};

/// Descriptor for `EditCollectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editCollectionResponseDescriptor = $convert.base64Decode(
    'ChZFZGl0Q29sbGVjdGlvblJlc3BvbnNl');

@$core.Deprecated('Use getCollectionDocumentsRequestDescriptor instead')
const GetCollectionDocumentsRequest$json = {
  '1': 'GetCollectionDocumentsRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
  ],
};

/// Descriptor for `GetCollectionDocumentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionDocumentsRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRDb2xsZWN0aW9uRG9jdW1lbnRzUmVxdWVzdBIjCg1jb2xsZWN0aW9uX2lkGAEgASgJUg'
    'xjb2xsZWN0aW9uSWQ=');

@$core.Deprecated('Use getCollectionDocumentRequestDescriptor instead')
const GetCollectionDocumentRequest$json = {
  '1': 'GetCollectionDocumentRequest',
  '2': [
    {'1': 'collection_id', '3': 1, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'document_id', '3': 2, '4': 1, '5': 9, '10': 'documentId'},
  ],
};

/// Descriptor for `GetCollectionDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionDocumentRequestDescriptor = $convert.base64Decode(
    'ChxHZXRDb2xsZWN0aW9uRG9jdW1lbnRSZXF1ZXN0EiMKDWNvbGxlY3Rpb25faWQYASABKAlSDG'
    'NvbGxlY3Rpb25JZBIfCgtkb2N1bWVudF9pZBgCIAEoCVIKZG9jdW1lbnRJZA==');

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
    {'1': 'schema', '3': 2, '4': 1, '5': 9, '10': 'schema'},
  ],
};

/// Descriptor for `CreateCollectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCollectionRequestDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVDb2xsZWN0aW9uUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhYKBnNjaGVtYR'
    'gCIAEoCVIGc2NoZW1h');

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

