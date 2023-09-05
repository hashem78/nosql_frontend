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

import 'google/protobuf/timestamp.pb.dart' as $2;
import 'node.pbenum.dart';

export 'node.pbenum.dart';

class GetCollectionDocumentsRequest extends $pb.GeneratedMessage {
  factory GetCollectionDocumentsRequest({
    $core.String? collectionName,
  }) {
    final $result = create();
    if (collectionName != null) {
      $result.collectionName = collectionName;
    }
    return $result;
  }
  GetCollectionDocumentsRequest._() : super();
  factory GetCollectionDocumentsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionDocumentsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollectionDocumentsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionName')
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
  $core.String get collectionName => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionName() => clearField(1);
}

class DocumentMetaData extends $pb.GeneratedMessage {
  factory DocumentMetaData({
    $core.String? id,
    $2.Timestamp? createdOn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdOn != null) {
      $result.createdOn = createdOn;
    }
    return $result;
  }
  DocumentMetaData._() : super();
  factory DocumentMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentMetaData', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'createdOn', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentMetaData clone() => DocumentMetaData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentMetaData copyWith(void Function(DocumentMetaData) updates) => super.copyWith((message) => updates(message as DocumentMetaData)) as DocumentMetaData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentMetaData create() => DocumentMetaData._();
  DocumentMetaData createEmptyInstance() => create();
  static $pb.PbList<DocumentMetaData> createRepeated() => $pb.PbList<DocumentMetaData>();
  @$core.pragma('dart2js:noInline')
  static DocumentMetaData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentMetaData>(create);
  static DocumentMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $2.Timestamp get createdOn => $_getN(1);
  @$pb.TagNumber(2)
  set createdOn($2.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedOn() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedOn() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureCreatedOn() => $_ensure(1);
}

class CollectionDocument extends $pb.GeneratedMessage {
  factory CollectionDocument({
    DocumentMetaData? metaData,
    $core.String? data,
  }) {
    final $result = create();
    if (metaData != null) {
      $result.metaData = metaData;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CollectionDocument._() : super();
  factory CollectionDocument.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionDocument.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDocument', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOM<DocumentMetaData>(1, _omitFieldNames ? '' : 'metaData', subBuilder: DocumentMetaData.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionDocument clone() => CollectionDocument()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionDocument copyWith(void Function(CollectionDocument) updates) => super.copyWith((message) => updates(message as CollectionDocument)) as CollectionDocument;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDocument create() => CollectionDocument._();
  CollectionDocument createEmptyInstance() => create();
  static $pb.PbList<CollectionDocument> createRepeated() => $pb.PbList<CollectionDocument>();
  @$core.pragma('dart2js:noInline')
  static CollectionDocument getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionDocument>(create);
  static CollectionDocument? _defaultInstance;

  @$pb.TagNumber(1)
  DocumentMetaData get metaData => $_getN(0);
  @$pb.TagNumber(1)
  set metaData(DocumentMetaData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaData() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaData() => clearField(1);
  @$pb.TagNumber(1)
  DocumentMetaData ensureMetaData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class CreateCollectionRequest extends $pb.GeneratedMessage {
  factory CreateCollectionRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateCollectionRequest._() : super();
  factory CreateCollectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCollectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCollectionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
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
}

class CollectionMetaData extends $pb.GeneratedMessage {
  factory CollectionMetaData({
    $core.String? id,
    $core.String? name,
    $2.Timestamp? createdOn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (createdOn != null) {
      $result.createdOn = createdOn;
    }
    return $result;
  }
  CollectionMetaData._() : super();
  factory CollectionMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionMetaData', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'createdOn', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionMetaData clone() => CollectionMetaData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionMetaData copyWith(void Function(CollectionMetaData) updates) => super.copyWith((message) => updates(message as CollectionMetaData)) as CollectionMetaData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionMetaData create() => CollectionMetaData._();
  CollectionMetaData createEmptyInstance() => create();
  static $pb.PbList<CollectionMetaData> createRepeated() => $pb.PbList<CollectionMetaData>();
  @$core.pragma('dart2js:noInline')
  static CollectionMetaData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionMetaData>(create);
  static CollectionMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get createdOn => $_getN(2);
  @$pb.TagNumber(3)
  set createdOn($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedOn() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedOn() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureCreatedOn() => $_ensure(2);
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
    $core.Iterable<CollectionMetaData>? collectionsMetaData,
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
    ..pc<CollectionMetaData>(1, _omitFieldNames ? '' : 'collectionsMetaData', $pb.PbFieldType.PM, subBuilder: CollectionMetaData.create)
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
  $core.List<CollectionMetaData> get collectionsMetaData => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');