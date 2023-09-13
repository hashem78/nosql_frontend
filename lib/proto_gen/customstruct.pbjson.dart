//
//  Generated code. Do not modify.
//  source: customstruct.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nullValueDescriptor instead')
const NullValue$json = {
  '1': 'NullValue',
  '2': [
    {'1': 'NULL_VALUE', '2': 0},
  ],
};

/// Descriptor for `NullValue`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nullValueDescriptor = $convert.base64Decode(
    'CglOdWxsVmFsdWUSDgoKTlVMTF9WQUxVRRAA');

@$core.Deprecated('Use customValueDescriptor instead')
const CustomValue$json = {
  '1': 'CustomValue',
  '2': [
    {'1': 'string_value', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'int_value', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'intValue'},
    {'1': 'double_value', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'bool_value', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'struct_value', '3': 5, '4': 1, '5': 11, '6': '.CustomStruct', '9': 0, '10': 'structValue'},
    {'1': 'list_value', '3': 6, '4': 1, '5': 11, '6': '.CustomList', '9': 0, '10': 'listValue'},
    {'1': 'null_value', '3': 7, '4': 1, '5': 14, '6': '.NullValue', '9': 0, '10': 'nullValue'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `CustomValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customValueDescriptor = $convert.base64Decode(
    'CgtDdXN0b21WYWx1ZRIjCgxzdHJpbmdfdmFsdWUYASABKAlIAFILc3RyaW5nVmFsdWUSHQoJaW'
    '50X3ZhbHVlGAIgASgFSABSCGludFZhbHVlEiMKDGRvdWJsZV92YWx1ZRgDIAEoAUgAUgtkb3Vi'
    'bGVWYWx1ZRIfCgpib29sX3ZhbHVlGAQgASgISABSCWJvb2xWYWx1ZRIyCgxzdHJ1Y3RfdmFsdW'
    'UYBSABKAsyDS5DdXN0b21TdHJ1Y3RIAFILc3RydWN0VmFsdWUSLAoKbGlzdF92YWx1ZRgGIAEo'
    'CzILLkN1c3RvbUxpc3RIAFIJbGlzdFZhbHVlEisKCm51bGxfdmFsdWUYByABKA4yCi5OdWxsVm'
    'FsdWVIAFIJbnVsbFZhbHVlQgcKBXZhbHVl');

@$core.Deprecated('Use customStructDescriptor instead')
const CustomStruct$json = {
  '1': 'CustomStruct',
  '2': [
    {'1': 'fields', '3': 1, '4': 3, '5': 11, '6': '.CustomStruct.FieldsEntry', '10': 'fields'},
  ],
  '3': [CustomStruct_FieldsEntry$json],
};

@$core.Deprecated('Use customStructDescriptor instead')
const CustomStruct_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.CustomValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CustomStruct`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customStructDescriptor = $convert.base64Decode(
    'CgxDdXN0b21TdHJ1Y3QSMQoGZmllbGRzGAEgAygLMhkuQ3VzdG9tU3RydWN0LkZpZWxkc0VudH'
    'J5UgZmaWVsZHMaRwoLRmllbGRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSIgoFdmFsdWUYAiAB'
    'KAsyDC5DdXN0b21WYWx1ZVIFdmFsdWU6AjgB');

@$core.Deprecated('Use customListDescriptor instead')
const CustomList$json = {
  '1': 'CustomList',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.CustomValue', '10': 'values'},
  ],
};

/// Descriptor for `CustomList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customListDescriptor = $convert.base64Decode(
    'CgpDdXN0b21MaXN0EiQKBnZhbHVlcxgBIAMoCzIMLkN1c3RvbVZhbHVlUgZ2YWx1ZXM=');

