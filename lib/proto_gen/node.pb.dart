//
//  Generated code. Do not modify.
//  source: node.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $2;
import 'customstruct.pb.dart' as $5;
import 'node.pbenum.dart';

export 'node.pbenum.dart';

class RemoveCompoundIndexResponse extends $pb.GeneratedMessage {
  factory RemoveCompoundIndexResponse() => create();
  RemoveCompoundIndexResponse._() : super();
  factory RemoveCompoundIndexResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveCompoundIndexResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveCompoundIndexResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveCompoundIndexResponse clone() => RemoveCompoundIndexResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveCompoundIndexResponse copyWith(void Function(RemoveCompoundIndexResponse) updates) => super.copyWith((message) => updates(message as RemoveCompoundIndexResponse)) as RemoveCompoundIndexResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveCompoundIndexResponse create() => RemoveCompoundIndexResponse._();
  RemoveCompoundIndexResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveCompoundIndexResponse> createRepeated() => $pb.PbList<RemoveCompoundIndexResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveCompoundIndexResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveCompoundIndexResponse>(create);
  static RemoveCompoundIndexResponse? _defaultInstance;
}

class RemoveCompoundIndexRequest extends $pb.GeneratedMessage {
  factory RemoveCompoundIndexRequest({
    $core.String? collectionId,
    $core.Iterable<$core.String>? properties,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    return $result;
  }
  RemoveCompoundIndexRequest._() : super();
  factory RemoveCompoundIndexRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveCompoundIndexRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveCompoundIndexRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..pPS(2, _omitFieldNames ? '' : 'properties')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveCompoundIndexRequest clone() => RemoveCompoundIndexRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveCompoundIndexRequest copyWith(void Function(RemoveCompoundIndexRequest) updates) => super.copyWith((message) => updates(message as RemoveCompoundIndexRequest)) as RemoveCompoundIndexRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveCompoundIndexRequest create() => RemoveCompoundIndexRequest._();
  RemoveCompoundIndexRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveCompoundIndexRequest> createRepeated() => $pb.PbList<RemoveCompoundIndexRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveCompoundIndexRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveCompoundIndexRequest>(create);
  static RemoveCompoundIndexRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get properties => $_getList(1);
}

class CompoundIndexQueryResponse extends $pb.GeneratedMessage {
  factory CompoundIndexQueryResponse({
    $core.Iterable<$core.String>? documentIds,
  }) {
    final $result = create();
    if (documentIds != null) {
      $result.documentIds.addAll(documentIds);
    }
    return $result;
  }
  CompoundIndexQueryResponse._() : super();
  factory CompoundIndexQueryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompoundIndexQueryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompoundIndexQueryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'documentIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompoundIndexQueryResponse clone() => CompoundIndexQueryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompoundIndexQueryResponse copyWith(void Function(CompoundIndexQueryResponse) updates) => super.copyWith((message) => updates(message as CompoundIndexQueryResponse)) as CompoundIndexQueryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompoundIndexQueryResponse create() => CompoundIndexQueryResponse._();
  CompoundIndexQueryResponse createEmptyInstance() => create();
  static $pb.PbList<CompoundIndexQueryResponse> createRepeated() => $pb.PbList<CompoundIndexQueryResponse>();
  @$core.pragma('dart2js:noInline')
  static CompoundIndexQueryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompoundIndexQueryResponse>(create);
  static CompoundIndexQueryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get documentIds => $_getList(0);
}

class CompoundIndexQueryRequest extends $pb.GeneratedMessage {
  factory CompoundIndexQueryRequest({
    $core.String? collectionId,
    Operator? operator,
    $5.CustomStruct? query,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (operator != null) {
      $result.operator = operator;
    }
    if (query != null) {
      $result.query = query;
    }
    return $result;
  }
  CompoundIndexQueryRequest._() : super();
  factory CompoundIndexQueryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompoundIndexQueryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompoundIndexQueryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..e<Operator>(2, _omitFieldNames ? '' : 'operator', $pb.PbFieldType.OE, defaultOrMaker: Operator.EQUALS, valueOf: Operator.valueOf, enumValues: Operator.values)
    ..aOM<$5.CustomStruct>(3, _omitFieldNames ? '' : 'query', subBuilder: $5.CustomStruct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompoundIndexQueryRequest clone() => CompoundIndexQueryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompoundIndexQueryRequest copyWith(void Function(CompoundIndexQueryRequest) updates) => super.copyWith((message) => updates(message as CompoundIndexQueryRequest)) as CompoundIndexQueryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompoundIndexQueryRequest create() => CompoundIndexQueryRequest._();
  CompoundIndexQueryRequest createEmptyInstance() => create();
  static $pb.PbList<CompoundIndexQueryRequest> createRepeated() => $pb.PbList<CompoundIndexQueryRequest>();
  @$core.pragma('dart2js:noInline')
  static CompoundIndexQueryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompoundIndexQueryRequest>(create);
  static CompoundIndexQueryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  Operator get operator => $_getN(1);
  @$pb.TagNumber(2)
  set operator(Operator v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperator() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperator() => clearField(2);

  @$pb.TagNumber(3)
  $5.CustomStruct get query => $_getN(2);
  @$pb.TagNumber(3)
  set query($5.CustomStruct v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuery() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuery() => clearField(3);
  @$pb.TagNumber(3)
  $5.CustomStruct ensureQuery() => $_ensure(2);
}

class CompoundIndexRequest extends $pb.GeneratedMessage {
  factory CompoundIndexRequest({
    $core.String? collectionId,
    $core.Iterable<$core.String>? properties,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    return $result;
  }
  CompoundIndexRequest._() : super();
  factory CompoundIndexRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompoundIndexRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompoundIndexRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..pPS(2, _omitFieldNames ? '' : 'properties')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompoundIndexRequest clone() => CompoundIndexRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompoundIndexRequest copyWith(void Function(CompoundIndexRequest) updates) => super.copyWith((message) => updates(message as CompoundIndexRequest)) as CompoundIndexRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompoundIndexRequest create() => CompoundIndexRequest._();
  CompoundIndexRequest createEmptyInstance() => create();
  static $pb.PbList<CompoundIndexRequest> createRepeated() => $pb.PbList<CompoundIndexRequest>();
  @$core.pragma('dart2js:noInline')
  static CompoundIndexRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompoundIndexRequest>(create);
  static CompoundIndexRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get properties => $_getList(1);
}

class GetCollectionPropertyTypeRequest extends $pb.GeneratedMessage {
  factory GetCollectionPropertyTypeRequest({
    $core.String? collectionId,
    $core.String? property,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (property != null) {
      $result.property = property;
    }
    return $result;
  }
  GetCollectionPropertyTypeRequest._() : super();
  factory GetCollectionPropertyTypeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionPropertyTypeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionPropertyTypeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'property')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionPropertyTypeRequest clone() => GetCollectionPropertyTypeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionPropertyTypeRequest copyWith(void Function(GetCollectionPropertyTypeRequest) updates) => super.copyWith((message) => updates(message as GetCollectionPropertyTypeRequest)) as GetCollectionPropertyTypeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollectionPropertyTypeRequest create() => GetCollectionPropertyTypeRequest._();
  GetCollectionPropertyTypeRequest createEmptyInstance() => create();
  static $pb.PbList<GetCollectionPropertyTypeRequest> createRepeated() => $pb.PbList<GetCollectionPropertyTypeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionPropertyTypeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionPropertyTypeRequest>(create);
  static GetCollectionPropertyTypeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get property => $_getSZ(1);
  @$pb.TagNumber(2)
  set property($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => clearField(2);
}

class GetCollectionPropertyTypeResponse extends $pb.GeneratedMessage {
  factory GetCollectionPropertyTypeResponse({
    CollectionPropertyType? propertyType,
  }) {
    final $result = create();
    if (propertyType != null) {
      $result.propertyType = propertyType;
    }
    return $result;
  }
  GetCollectionPropertyTypeResponse._() : super();
  factory GetCollectionPropertyTypeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionPropertyTypeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionPropertyTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..e<CollectionPropertyType>(1, _omitFieldNames ? '' : 'propertyType', $pb.PbFieldType.OE, defaultOrMaker: CollectionPropertyType.INTEGER, valueOf: CollectionPropertyType.valueOf, enumValues: CollectionPropertyType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionPropertyTypeResponse clone() => GetCollectionPropertyTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionPropertyTypeResponse copyWith(void Function(GetCollectionPropertyTypeResponse) updates) => super.copyWith((message) => updates(message as GetCollectionPropertyTypeResponse)) as GetCollectionPropertyTypeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollectionPropertyTypeResponse create() => GetCollectionPropertyTypeResponse._();
  GetCollectionPropertyTypeResponse createEmptyInstance() => create();
  static $pb.PbList<GetCollectionPropertyTypeResponse> createRepeated() => $pb.PbList<GetCollectionPropertyTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionPropertyTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionPropertyTypeResponse>(create);
  static GetCollectionPropertyTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CollectionPropertyType get propertyType => $_getN(0);
  @$pb.TagNumber(1)
  set propertyType(CollectionPropertyType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyType() => clearField(1);
}

class QueryDatabaseRequest extends $pb.GeneratedMessage {
  factory QueryDatabaseRequest({
    $core.String? collectionId,
    $core.String? property,
    Operator? operator,
    $5.CustomValue? value,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (property != null) {
      $result.property = property;
    }
    if (operator != null) {
      $result.operator = operator;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  QueryDatabaseRequest._() : super();
  factory QueryDatabaseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryDatabaseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryDatabaseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'property')
    ..e<Operator>(3, _omitFieldNames ? '' : 'operator', $pb.PbFieldType.OE, defaultOrMaker: Operator.EQUALS, valueOf: Operator.valueOf, enumValues: Operator.values)
    ..aOM<$5.CustomValue>(4, _omitFieldNames ? '' : 'value', subBuilder: $5.CustomValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryDatabaseRequest clone() => QueryDatabaseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryDatabaseRequest copyWith(void Function(QueryDatabaseRequest) updates) => super.copyWith((message) => updates(message as QueryDatabaseRequest)) as QueryDatabaseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryDatabaseRequest create() => QueryDatabaseRequest._();
  QueryDatabaseRequest createEmptyInstance() => create();
  static $pb.PbList<QueryDatabaseRequest> createRepeated() => $pb.PbList<QueryDatabaseRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryDatabaseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryDatabaseRequest>(create);
  static QueryDatabaseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get property => $_getSZ(1);
  @$pb.TagNumber(2)
  set property($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => clearField(2);

  @$pb.TagNumber(3)
  Operator get operator => $_getN(2);
  @$pb.TagNumber(3)
  set operator(Operator v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperator() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperator() => clearField(3);

  @$pb.TagNumber(4)
  $5.CustomValue get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($5.CustomValue v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $5.CustomValue ensureValue() => $_ensure(3);
}

class QueryDatabaseResponse extends $pb.GeneratedMessage {
  factory QueryDatabaseResponse({
    $core.String? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  QueryDatabaseResponse._() : super();
  factory QueryDatabaseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryDatabaseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryDatabaseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryDatabaseResponse clone() => QueryDatabaseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryDatabaseResponse copyWith(void Function(QueryDatabaseResponse) updates) => super.copyWith((message) => updates(message as QueryDatabaseResponse)) as QueryDatabaseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryDatabaseResponse create() => QueryDatabaseResponse._();
  QueryDatabaseResponse createEmptyInstance() => create();
  static $pb.PbList<QueryDatabaseResponse> createRepeated() => $pb.PbList<QueryDatabaseResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryDatabaseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryDatabaseResponse>(create);
  static QueryDatabaseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class GetCollectionMetaDataRequest extends $pb.GeneratedMessage {
  factory GetCollectionMetaDataRequest({
    $core.String? collectionId,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    return $result;
  }
  GetCollectionMetaDataRequest._() : super();
  factory GetCollectionMetaDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionMetaDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionMetaDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionMetaDataRequest clone() => GetCollectionMetaDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionMetaDataRequest copyWith(void Function(GetCollectionMetaDataRequest) updates) => super.copyWith((message) => updates(message as GetCollectionMetaDataRequest)) as GetCollectionMetaDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollectionMetaDataRequest create() => GetCollectionMetaDataRequest._();
  GetCollectionMetaDataRequest createEmptyInstance() => create();
  static $pb.PbList<GetCollectionMetaDataRequest> createRepeated() => $pb.PbList<GetCollectionMetaDataRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionMetaDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionMetaDataRequest>(create);
  static GetCollectionMetaDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);
}

class RemoveIndexFromCollectionPropertyRequest extends $pb.GeneratedMessage {
  factory RemoveIndexFromCollectionPropertyRequest({
    $core.String? collectionId,
    $core.String? property,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (property != null) {
      $result.property = property;
    }
    return $result;
  }
  RemoveIndexFromCollectionPropertyRequest._() : super();
  factory RemoveIndexFromCollectionPropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveIndexFromCollectionPropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveIndexFromCollectionPropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'property')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveIndexFromCollectionPropertyRequest clone() => RemoveIndexFromCollectionPropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveIndexFromCollectionPropertyRequest copyWith(void Function(RemoveIndexFromCollectionPropertyRequest) updates) => super.copyWith((message) => updates(message as RemoveIndexFromCollectionPropertyRequest)) as RemoveIndexFromCollectionPropertyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveIndexFromCollectionPropertyRequest create() => RemoveIndexFromCollectionPropertyRequest._();
  RemoveIndexFromCollectionPropertyRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveIndexFromCollectionPropertyRequest> createRepeated() => $pb.PbList<RemoveIndexFromCollectionPropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveIndexFromCollectionPropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveIndexFromCollectionPropertyRequest>(create);
  static RemoveIndexFromCollectionPropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get property => $_getSZ(1);
  @$pb.TagNumber(2)
  set property($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => clearField(2);
}

class RemoveIndexFromCollectionPropertyResponse extends $pb.GeneratedMessage {
  factory RemoveIndexFromCollectionPropertyResponse() => create();
  RemoveIndexFromCollectionPropertyResponse._() : super();
  factory RemoveIndexFromCollectionPropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveIndexFromCollectionPropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveIndexFromCollectionPropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveIndexFromCollectionPropertyResponse clone() => RemoveIndexFromCollectionPropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveIndexFromCollectionPropertyResponse copyWith(void Function(RemoveIndexFromCollectionPropertyResponse) updates) => super.copyWith((message) => updates(message as RemoveIndexFromCollectionPropertyResponse)) as RemoveIndexFromCollectionPropertyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveIndexFromCollectionPropertyResponse create() => RemoveIndexFromCollectionPropertyResponse._();
  RemoveIndexFromCollectionPropertyResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveIndexFromCollectionPropertyResponse> createRepeated() => $pb.PbList<RemoveIndexFromCollectionPropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveIndexFromCollectionPropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveIndexFromCollectionPropertyResponse>(create);
  static RemoveIndexFromCollectionPropertyResponse? _defaultInstance;
}

class IsPropertyIndexedRequest extends $pb.GeneratedMessage {
  factory IsPropertyIndexedRequest({
    $core.String? collectionId,
    $core.String? property,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (property != null) {
      $result.property = property;
    }
    return $result;
  }
  IsPropertyIndexedRequest._() : super();
  factory IsPropertyIndexedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsPropertyIndexedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsPropertyIndexedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'property')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsPropertyIndexedRequest clone() => IsPropertyIndexedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsPropertyIndexedRequest copyWith(void Function(IsPropertyIndexedRequest) updates) => super.copyWith((message) => updates(message as IsPropertyIndexedRequest)) as IsPropertyIndexedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsPropertyIndexedRequest create() => IsPropertyIndexedRequest._();
  IsPropertyIndexedRequest createEmptyInstance() => create();
  static $pb.PbList<IsPropertyIndexedRequest> createRepeated() => $pb.PbList<IsPropertyIndexedRequest>();
  @$core.pragma('dart2js:noInline')
  static IsPropertyIndexedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsPropertyIndexedRequest>(create);
  static IsPropertyIndexedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get property => $_getSZ(1);
  @$pb.TagNumber(2)
  set property($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => clearField(2);
}

class IsPropertyIndexedResponse extends $pb.GeneratedMessage {
  factory IsPropertyIndexedResponse({
    $core.bool? isIndexed,
  }) {
    final $result = create();
    if (isIndexed != null) {
      $result.isIndexed = isIndexed;
    }
    return $result;
  }
  IsPropertyIndexedResponse._() : super();
  factory IsPropertyIndexedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsPropertyIndexedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsPropertyIndexedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isIndexed', protoName: 'isIndexed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsPropertyIndexedResponse clone() => IsPropertyIndexedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsPropertyIndexedResponse copyWith(void Function(IsPropertyIndexedResponse) updates) => super.copyWith((message) => updates(message as IsPropertyIndexedResponse)) as IsPropertyIndexedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsPropertyIndexedResponse create() => IsPropertyIndexedResponse._();
  IsPropertyIndexedResponse createEmptyInstance() => create();
  static $pb.PbList<IsPropertyIndexedResponse> createRepeated() => $pb.PbList<IsPropertyIndexedResponse>();
  @$core.pragma('dart2js:noInline')
  static IsPropertyIndexedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsPropertyIndexedResponse>(create);
  static IsPropertyIndexedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isIndexed => $_getBF(0);
  @$pb.TagNumber(1)
  set isIndexed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsIndexed() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsIndexed() => clearField(1);
}

class IndexCollectionPropertyRequest extends $pb.GeneratedMessage {
  factory IndexCollectionPropertyRequest({
    $core.String? collectionId,
    $core.String? property,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (property != null) {
      $result.property = property;
    }
    return $result;
  }
  IndexCollectionPropertyRequest._() : super();
  factory IndexCollectionPropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexCollectionPropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IndexCollectionPropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'property')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IndexCollectionPropertyRequest clone() => IndexCollectionPropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IndexCollectionPropertyRequest copyWith(void Function(IndexCollectionPropertyRequest) updates) => super.copyWith((message) => updates(message as IndexCollectionPropertyRequest)) as IndexCollectionPropertyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexCollectionPropertyRequest create() => IndexCollectionPropertyRequest._();
  IndexCollectionPropertyRequest createEmptyInstance() => create();
  static $pb.PbList<IndexCollectionPropertyRequest> createRepeated() => $pb.PbList<IndexCollectionPropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static IndexCollectionPropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IndexCollectionPropertyRequest>(create);
  static IndexCollectionPropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get property => $_getSZ(1);
  @$pb.TagNumber(2)
  set property($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => clearField(2);
}

class IndexCollectionPropertyResponse extends $pb.GeneratedMessage {
  factory IndexCollectionPropertyResponse() => create();
  IndexCollectionPropertyResponse._() : super();
  factory IndexCollectionPropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexCollectionPropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IndexCollectionPropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IndexCollectionPropertyResponse clone() => IndexCollectionPropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IndexCollectionPropertyResponse copyWith(void Function(IndexCollectionPropertyResponse) updates) => super.copyWith((message) => updates(message as IndexCollectionPropertyResponse)) as IndexCollectionPropertyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexCollectionPropertyResponse create() => IndexCollectionPropertyResponse._();
  IndexCollectionPropertyResponse createEmptyInstance() => create();
  static $pb.PbList<IndexCollectionPropertyResponse> createRepeated() => $pb.PbList<IndexCollectionPropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static IndexCollectionPropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IndexCollectionPropertyResponse>(create);
  static IndexCollectionPropertyResponse? _defaultInstance;
}

class ClientHelloRequest extends $pb.GeneratedMessage {
  factory ClientHelloRequest() => create();
  ClientHelloRequest._() : super();
  factory ClientHelloRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientHelloRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientHelloRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientHelloRequest clone() => ClientHelloRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientHelloRequest copyWith(void Function(ClientHelloRequest) updates) => super.copyWith((message) => updates(message as ClientHelloRequest)) as ClientHelloRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientHelloRequest create() => ClientHelloRequest._();
  ClientHelloRequest createEmptyInstance() => create();
  static $pb.PbList<ClientHelloRequest> createRepeated() => $pb.PbList<ClientHelloRequest>();
  @$core.pragma('dart2js:noInline')
  static ClientHelloRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientHelloRequest>(create);
  static ClientHelloRequest? _defaultInstance;
}

class ClientHelloResponse extends $pb.GeneratedMessage {
  factory ClientHelloResponse() => create();
  ClientHelloResponse._() : super();
  factory ClientHelloResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientHelloResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientHelloResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientHelloResponse clone() => ClientHelloResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientHelloResponse copyWith(void Function(ClientHelloResponse) updates) => super.copyWith((message) => updates(message as ClientHelloResponse)) as ClientHelloResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientHelloResponse create() => ClientHelloResponse._();
  ClientHelloResponse createEmptyInstance() => create();
  static $pb.PbList<ClientHelloResponse> createRepeated() => $pb.PbList<ClientHelloResponse>();
  @$core.pragma('dart2js:noInline')
  static ClientHelloResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientHelloResponse>(create);
  static ClientHelloResponse? _defaultInstance;
}

class DeleteCollectionDocumentRequest extends $pb.GeneratedMessage {
  factory DeleteCollectionDocumentRequest({
    $core.String? collectionId,
    $core.String? documentId,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (documentId != null) {
      $result.documentId = documentId;
    }
    return $result;
  }
  DeleteCollectionDocumentRequest._() : super();
  factory DeleteCollectionDocumentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCollectionDocumentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCollectionDocumentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'documentId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCollectionDocumentRequest clone() => DeleteCollectionDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCollectionDocumentRequest copyWith(void Function(DeleteCollectionDocumentRequest) updates) => super.copyWith((message) => updates(message as DeleteCollectionDocumentRequest)) as DeleteCollectionDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCollectionDocumentRequest create() => DeleteCollectionDocumentRequest._();
  DeleteCollectionDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCollectionDocumentRequest> createRepeated() => $pb.PbList<DeleteCollectionDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCollectionDocumentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCollectionDocumentRequest>(create);
  static DeleteCollectionDocumentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentId() => clearField(2);
}

class DeleteCollectionDocumentResponse extends $pb.GeneratedMessage {
  factory DeleteCollectionDocumentResponse() => create();
  DeleteCollectionDocumentResponse._() : super();
  factory DeleteCollectionDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCollectionDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCollectionDocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCollectionDocumentResponse clone() => DeleteCollectionDocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCollectionDocumentResponse copyWith(void Function(DeleteCollectionDocumentResponse) updates) => super.copyWith((message) => updates(message as DeleteCollectionDocumentResponse)) as DeleteCollectionDocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCollectionDocumentResponse create() => DeleteCollectionDocumentResponse._();
  DeleteCollectionDocumentResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteCollectionDocumentResponse> createRepeated() => $pb.PbList<DeleteCollectionDocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteCollectionDocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCollectionDocumentResponse>(create);
  static DeleteCollectionDocumentResponse? _defaultInstance;
}

class GetDocumentSampleRequest extends $pb.GeneratedMessage {
  factory GetDocumentSampleRequest({
    $core.String? collectionId,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    return $result;
  }
  GetDocumentSampleRequest._() : super();
  factory GetDocumentSampleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDocumentSampleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDocumentSampleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDocumentSampleRequest clone() => GetDocumentSampleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDocumentSampleRequest copyWith(void Function(GetDocumentSampleRequest) updates) => super.copyWith((message) => updates(message as GetDocumentSampleRequest)) as GetDocumentSampleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDocumentSampleRequest create() => GetDocumentSampleRequest._();
  GetDocumentSampleRequest createEmptyInstance() => create();
  static $pb.PbList<GetDocumentSampleRequest> createRepeated() => $pb.PbList<GetDocumentSampleRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDocumentSampleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDocumentSampleRequest>(create);
  static GetDocumentSampleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);
}

class GetDocumentSampleResponse extends $pb.GeneratedMessage {
  factory GetDocumentSampleResponse({
    $core.String? documentSample,
  }) {
    final $result = create();
    if (documentSample != null) {
      $result.documentSample = documentSample;
    }
    return $result;
  }
  GetDocumentSampleResponse._() : super();
  factory GetDocumentSampleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDocumentSampleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDocumentSampleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'documentSample')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDocumentSampleResponse clone() => GetDocumentSampleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDocumentSampleResponse copyWith(void Function(GetDocumentSampleResponse) updates) => super.copyWith((message) => updates(message as GetDocumentSampleResponse)) as GetDocumentSampleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDocumentSampleResponse create() => GetDocumentSampleResponse._();
  GetDocumentSampleResponse createEmptyInstance() => create();
  static $pb.PbList<GetDocumentSampleResponse> createRepeated() => $pb.PbList<GetDocumentSampleResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDocumentSampleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDocumentSampleResponse>(create);
  static GetDocumentSampleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentSample => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentSample($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentSample() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentSample() => clearField(1);
}

class DeleteCollectionRequest extends $pb.GeneratedMessage {
  factory DeleteCollectionRequest({
    $core.String? collectionId,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    return $result;
  }
  DeleteCollectionRequest._() : super();
  factory DeleteCollectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCollectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCollectionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCollectionRequest clone() => DeleteCollectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCollectionRequest copyWith(void Function(DeleteCollectionRequest) updates) => super.copyWith((message) => updates(message as DeleteCollectionRequest)) as DeleteCollectionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCollectionRequest create() => DeleteCollectionRequest._();
  DeleteCollectionRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCollectionRequest> createRepeated() => $pb.PbList<DeleteCollectionRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCollectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCollectionRequest>(create);
  static DeleteCollectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);
}

class DeleteCollectionResponse extends $pb.GeneratedMessage {
  factory DeleteCollectionResponse() => create();
  DeleteCollectionResponse._() : super();
  factory DeleteCollectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCollectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCollectionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCollectionResponse clone() => DeleteCollectionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCollectionResponse copyWith(void Function(DeleteCollectionResponse) updates) => super.copyWith((message) => updates(message as DeleteCollectionResponse)) as DeleteCollectionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCollectionResponse create() => DeleteCollectionResponse._();
  DeleteCollectionResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteCollectionResponse> createRepeated() => $pb.PbList<DeleteCollectionResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteCollectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCollectionResponse>(create);
  static DeleteCollectionResponse? _defaultInstance;
}

class EditCollectionRequest extends $pb.GeneratedMessage {
  factory EditCollectionRequest({
    $core.String? collectionId,
    $core.String? collectionName,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (collectionName != null) {
      $result.collectionName = collectionName;
    }
    return $result;
  }
  EditCollectionRequest._() : super();
  factory EditCollectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditCollectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditCollectionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'collectionName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditCollectionRequest clone() => EditCollectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditCollectionRequest copyWith(void Function(EditCollectionRequest) updates) => super.copyWith((message) => updates(message as EditCollectionRequest)) as EditCollectionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditCollectionRequest create() => EditCollectionRequest._();
  EditCollectionRequest createEmptyInstance() => create();
  static $pb.PbList<EditCollectionRequest> createRepeated() => $pb.PbList<EditCollectionRequest>();
  @$core.pragma('dart2js:noInline')
  static EditCollectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditCollectionRequest>(create);
  static EditCollectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collectionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionName() => clearField(2);
}

class EditCollectionResponse extends $pb.GeneratedMessage {
  factory EditCollectionResponse() => create();
  EditCollectionResponse._() : super();
  factory EditCollectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditCollectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditCollectionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditCollectionResponse clone() => EditCollectionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditCollectionResponse copyWith(void Function(EditCollectionResponse) updates) => super.copyWith((message) => updates(message as EditCollectionResponse)) as EditCollectionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditCollectionResponse create() => EditCollectionResponse._();
  EditCollectionResponse createEmptyInstance() => create();
  static $pb.PbList<EditCollectionResponse> createRepeated() => $pb.PbList<EditCollectionResponse>();
  @$core.pragma('dart2js:noInline')
  static EditCollectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditCollectionResponse>(create);
  static EditCollectionResponse? _defaultInstance;
}

class GetCollectionDocumentsRequest extends $pb.GeneratedMessage {
  factory GetCollectionDocumentsRequest({
    $core.String? collectionId,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    return $result;
  }
  GetCollectionDocumentsRequest._() : super();
  factory GetCollectionDocumentsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionDocumentsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionDocumentsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionDocumentsRequest clone() => GetCollectionDocumentsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionDocumentsRequest copyWith(void Function(GetCollectionDocumentsRequest) updates) => super.copyWith((message) => updates(message as GetCollectionDocumentsRequest)) as GetCollectionDocumentsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollectionDocumentsRequest create() => GetCollectionDocumentsRequest._();
  GetCollectionDocumentsRequest createEmptyInstance() => create();
  static $pb.PbList<GetCollectionDocumentsRequest> createRepeated() => $pb.PbList<GetCollectionDocumentsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionDocumentsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionDocumentsRequest>(create);
  static GetCollectionDocumentsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);
}

class GetCollectionDocumentRequest extends $pb.GeneratedMessage {
  factory GetCollectionDocumentRequest({
    $core.String? collectionId,
    $core.String? documentId,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (documentId != null) {
      $result.documentId = documentId;
    }
    return $result;
  }
  GetCollectionDocumentRequest._() : super();
  factory GetCollectionDocumentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionDocumentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionDocumentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'documentId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionDocumentRequest clone() => GetCollectionDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionDocumentRequest copyWith(void Function(GetCollectionDocumentRequest) updates) => super.copyWith((message) => updates(message as GetCollectionDocumentRequest)) as GetCollectionDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollectionDocumentRequest create() => GetCollectionDocumentRequest._();
  GetCollectionDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<GetCollectionDocumentRequest> createRepeated() => $pb.PbList<GetCollectionDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionDocumentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionDocumentRequest>(create);
  static GetCollectionDocumentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentId() => clearField(2);
}

class CreateCollectionRequest extends $pb.GeneratedMessage {
  factory CreateCollectionRequest({
    $core.String? name,
    $core.String? schema,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (schema != null) {
      $result.schema = schema;
    }
    return $result;
  }
  CreateCollectionRequest._() : super();
  factory CreateCollectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCollectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCollectionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'schema')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCollectionRequest clone() => CreateCollectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCollectionRequest copyWith(void Function(CreateCollectionRequest) updates) => super.copyWith((message) => updates(message as CreateCollectionRequest)) as CreateCollectionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCollectionRequest create() => CreateCollectionRequest._();
  CreateCollectionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCollectionRequest> createRepeated() => $pb.PbList<CreateCollectionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCollectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCollectionRequest>(create);
  static CreateCollectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get schema => $_getSZ(1);
  @$pb.TagNumber(2)
  set schema($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);
}

class GetNodeStateRequest extends $pb.GeneratedMessage {
  factory GetNodeStateRequest({
    $core.int? sender,
  }) {
    final $result = create();
    if (sender != null) {
      $result.sender = sender;
    }
    return $result;
  }
  GetNodeStateRequest._() : super();
  factory GetNodeStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNodeStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNodeStateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sender', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNodeStateRequest clone() => GetNodeStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNodeStateRequest copyWith(void Function(GetNodeStateRequest) updates) => super.copyWith((message) => updates(message as GetNodeStateRequest)) as GetNodeStateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNodeStateRequest create() => GetNodeStateRequest._();
  GetNodeStateRequest createEmptyInstance() => create();
  static $pb.PbList<GetNodeStateRequest> createRepeated() => $pb.PbList<GetNodeStateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNodeStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNodeStateRequest>(create);
  static GetNodeStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sender => $_getIZ(0);
  @$pb.TagNumber(1)
  set sender($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);
}

class GetNodeStateResponse extends $pb.GeneratedMessage {
  factory GetNodeStateResponse({
    $core.int? port,
    NodeState? nodeState,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    if (nodeState != null) {
      $result.nodeState = nodeState;
    }
    return $result;
  }
  GetNodeStateResponse._() : super();
  factory GetNodeStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNodeStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNodeStateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..e<NodeState>(2, _omitFieldNames ? '' : 'nodeState', $pb.PbFieldType.OE, defaultOrMaker: NodeState.HEAlTHY, valueOf: NodeState.valueOf, enumValues: NodeState.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNodeStateResponse clone() => GetNodeStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNodeStateResponse copyWith(void Function(GetNodeStateResponse) updates) => super.copyWith((message) => updates(message as GetNodeStateResponse)) as GetNodeStateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNodeStateResponse create() => GetNodeStateResponse._();
  GetNodeStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetNodeStateResponse> createRepeated() => $pb.PbList<GetNodeStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNodeStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNodeStateResponse>(create);
  static GetNodeStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get port => $_getIZ(0);
  @$pb.TagNumber(1)
  set port($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);

  @$pb.TagNumber(2)
  NodeState get nodeState => $_getN(1);
  @$pb.TagNumber(2)
  set nodeState(NodeState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeState() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeState() => clearField(2);
}

class GetCollectionsRequest extends $pb.GeneratedMessage {
  factory GetCollectionsRequest() => create();
  GetCollectionsRequest._() : super();
  factory GetCollectionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionsRequest clone() => GetCollectionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionsRequest copyWith(void Function(GetCollectionsRequest) updates) => super.copyWith((message) => updates(message as GetCollectionsRequest)) as GetCollectionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollectionsRequest create() => GetCollectionsRequest._();
  GetCollectionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetCollectionsRequest> createRepeated() => $pb.PbList<GetCollectionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionsRequest>(create);
  static GetCollectionsRequest? _defaultInstance;
}

class GetCollectionsResponse extends $pb.GeneratedMessage {
  factory GetCollectionsResponse({
    $core.Iterable<$2.CollectionMetaData>? collectionsMetaData,
  }) {
    final $result = create();
    if (collectionsMetaData != null) {
      $result.collectionsMetaData.addAll(collectionsMetaData);
    }
    return $result;
  }
  GetCollectionsResponse._() : super();
  factory GetCollectionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..pc<$2.CollectionMetaData>(1, _omitFieldNames ? '' : 'collectionsMetaData', $pb.PbFieldType.PM, subBuilder: $2.CollectionMetaData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionsResponse clone() => GetCollectionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionsResponse copyWith(void Function(GetCollectionsResponse) updates) => super.copyWith((message) => updates(message as GetCollectionsResponse)) as GetCollectionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollectionsResponse create() => GetCollectionsResponse._();
  GetCollectionsResponse createEmptyInstance() => create();
  static $pb.PbList<GetCollectionsResponse> createRepeated() => $pb.PbList<GetCollectionsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionsResponse>(create);
  static GetCollectionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.CollectionMetaData> get collectionsMetaData => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
