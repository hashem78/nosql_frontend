//
//  Generated code. Do not modify.
//  source: customstruct.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'customstruct.pbenum.dart';

export 'customstruct.pbenum.dart';

enum CustomValue_Value {
  stringValue, 
  intValue, 
  doubleValue, 
  boolValue, 
  structValue, 
  listValue, 
  nullValue, 
  notSet
}

class CustomValue extends $pb.GeneratedMessage {
  factory CustomValue({
    $core.String? stringValue,
    $core.int? intValue,
    $core.double? doubleValue,
    $core.bool? boolValue,
    CustomStruct? structValue,
    CustomList? listValue,
    NullValue? nullValue,
  }) {
    final $result = create();
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (intValue != null) {
      $result.intValue = intValue;
    }
    if (doubleValue != null) {
      $result.doubleValue = doubleValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    if (structValue != null) {
      $result.structValue = structValue;
    }
    if (listValue != null) {
      $result.listValue = listValue;
    }
    if (nullValue != null) {
      $result.nullValue = nullValue;
    }
    return $result;
  }
  CustomValue._() : super();
  factory CustomValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CustomValue_Value> _CustomValue_ValueByTag = {
    1 : CustomValue_Value.stringValue,
    2 : CustomValue_Value.intValue,
    3 : CustomValue_Value.doubleValue,
    4 : CustomValue_Value.boolValue,
    5 : CustomValue_Value.structValue,
    6 : CustomValue_Value.listValue,
    7 : CustomValue_Value.nullValue,
    0 : CustomValue_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomValue', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOS(1, _omitFieldNames ? '' : 'stringValue')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intValue', $pb.PbFieldType.O3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..aOB(4, _omitFieldNames ? '' : 'boolValue')
    ..aOM<CustomStruct>(5, _omitFieldNames ? '' : 'structValue', subBuilder: CustomStruct.create)
    ..aOM<CustomList>(6, _omitFieldNames ? '' : 'listValue', subBuilder: CustomList.create)
    ..e<NullValue>(7, _omitFieldNames ? '' : 'nullValue', $pb.PbFieldType.OE, defaultOrMaker: NullValue.NULL_VALUE, valueOf: NullValue.valueOf, enumValues: NullValue.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomValue clone() => CustomValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomValue copyWith(void Function(CustomValue) updates) => super.copyWith((message) => updates(message as CustomValue)) as CustomValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomValue create() => CustomValue._();
  CustomValue createEmptyInstance() => create();
  static $pb.PbList<CustomValue> createRepeated() => $pb.PbList<CustomValue>();
  @$core.pragma('dart2js:noInline')
  static CustomValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomValue>(create);
  static CustomValue? _defaultInstance;

  CustomValue_Value whichValue() => _CustomValue_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get stringValue => $_getSZ(0);
  @$pb.TagNumber(1)
  set stringValue($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStringValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearStringValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get intValue => $_getIZ(1);
  @$pb.TagNumber(2)
  set intValue($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIntValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get doubleValue => $_getN(2);
  @$pb.TagNumber(3)
  set doubleValue($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDoubleValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoubleValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get boolValue => $_getBF(3);
  @$pb.TagNumber(4)
  set boolValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBoolValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolValue() => clearField(4);

  @$pb.TagNumber(5)
  CustomStruct get structValue => $_getN(4);
  @$pb.TagNumber(5)
  set structValue(CustomStruct v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStructValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearStructValue() => clearField(5);
  @$pb.TagNumber(5)
  CustomStruct ensureStructValue() => $_ensure(4);

  @$pb.TagNumber(6)
  CustomList get listValue => $_getN(5);
  @$pb.TagNumber(6)
  set listValue(CustomList v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasListValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearListValue() => clearField(6);
  @$pb.TagNumber(6)
  CustomList ensureListValue() => $_ensure(5);

  @$pb.TagNumber(7)
  NullValue get nullValue => $_getN(6);
  @$pb.TagNumber(7)
  set nullValue(NullValue v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNullValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearNullValue() => clearField(7);
}

class CustomStruct extends $pb.GeneratedMessage {
  factory CustomStruct({
    $core.Map<$core.String, CustomValue>? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  CustomStruct._() : super();
  factory CustomStruct.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomStruct.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomStruct', createEmptyInstance: create)
    ..m<$core.String, CustomValue>(1, _omitFieldNames ? '' : 'fields', entryClassName: 'CustomStruct.FieldsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: CustomValue.create, valueDefaultOrMaker: CustomValue.getDefault)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomStruct clone() => CustomStruct()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomStruct copyWith(void Function(CustomStruct) updates) => super.copyWith((message) => updates(message as CustomStruct)) as CustomStruct;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomStruct create() => CustomStruct._();
  CustomStruct createEmptyInstance() => create();
  static $pb.PbList<CustomStruct> createRepeated() => $pb.PbList<CustomStruct>();
  @$core.pragma('dart2js:noInline')
  static CustomStruct getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomStruct>(create);
  static CustomStruct? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, CustomValue> get fields => $_getMap(0);
}

class CustomList extends $pb.GeneratedMessage {
  factory CustomList({
    $core.Iterable<CustomValue>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  CustomList._() : super();
  factory CustomList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomList', createEmptyInstance: create)
    ..pc<CustomValue>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: CustomValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomList clone() => CustomList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomList copyWith(void Function(CustomList) updates) => super.copyWith((message) => updates(message as CustomList)) as CustomList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomList create() => CustomList._();
  CustomList createEmptyInstance() => create();
  static $pb.PbList<CustomList> createRepeated() => $pb.PbList<CustomList>();
  @$core.pragma('dart2js:noInline')
  static CustomList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomList>(create);
  static CustomList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CustomValue> get values => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
