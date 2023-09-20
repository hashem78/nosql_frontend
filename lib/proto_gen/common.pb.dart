//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $3;

class CollectionMetaData extends $pb.GeneratedMessage {
  factory CollectionMetaData({
    $core.String? id,
    $core.String? name,
    $3.Timestamp? createdOn,
    $core.bool? deleted,
    $core.Iterable<$core.String>? indexedProperties,
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
    if (deleted != null) {
      $result.deleted = deleted;
    }
    if (indexedProperties != null) {
      $result.indexedProperties.addAll(indexedProperties);
    }
    return $result;
  }
  CollectionMetaData._() : super();
  factory CollectionMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionMetaData', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'createdOn', subBuilder: $3.Timestamp.create)
    ..aOB(4, _omitFieldNames ? '' : 'deleted')
    ..pPS(5, _omitFieldNames ? '' : 'indexedProperties')
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
  $3.Timestamp get createdOn => $_getN(2);
  @$pb.TagNumber(3)
  set createdOn($3.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedOn() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedOn() => clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureCreatedOn() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get deleted => $_getBF(3);
  @$pb.TagNumber(4)
  set deleted($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleted() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get indexedProperties => $_getList(4);
}

class SetCollectionDocumentRequest extends $pb.GeneratedMessage {
  factory SetCollectionDocumentRequest({
    $core.String? collectionId,
    $core.String? documentId,
    $core.String? document,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (documentId != null) {
      $result.documentId = documentId;
    }
    if (document != null) {
      $result.document = document;
    }
    return $result;
  }
  SetCollectionDocumentRequest._() : super();
  factory SetCollectionDocumentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCollectionDocumentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCollectionDocumentRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'collectionId')
    ..aOS(2, _omitFieldNames ? '' : 'documentId')
    ..aOS(3, _omitFieldNames ? '' : 'document')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCollectionDocumentRequest clone() => SetCollectionDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCollectionDocumentRequest copyWith(void Function(SetCollectionDocumentRequest) updates) => super.copyWith((message) => updates(message as SetCollectionDocumentRequest)) as SetCollectionDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCollectionDocumentRequest create() => SetCollectionDocumentRequest._();
  SetCollectionDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<SetCollectionDocumentRequest> createRepeated() => $pb.PbList<SetCollectionDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static SetCollectionDocumentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCollectionDocumentRequest>(create);
  static SetCollectionDocumentRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get document => $_getSZ(2);
  @$pb.TagNumber(3)
  set document($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocument() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocument() => clearField(3);
}

class DocumentMetaData extends $pb.GeneratedMessage {
  factory DocumentMetaData({
    $core.String? id,
    $core.int? affinity,
    $3.Timestamp? createdOn,
    $3.Timestamp? lastEditedOn,
    $core.bool? deleted,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (affinity != null) {
      $result.affinity = affinity;
    }
    if (createdOn != null) {
      $result.createdOn = createdOn;
    }
    if (lastEditedOn != null) {
      $result.lastEditedOn = lastEditedOn;
    }
    if (deleted != null) {
      $result.deleted = deleted;
    }
    return $result;
  }
  DocumentMetaData._() : super();
  factory DocumentMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentMetaData', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'affinity', $pb.PbFieldType.O3)
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'createdOn', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'lastEditedOn', subBuilder: $3.Timestamp.create)
    ..aOB(5, _omitFieldNames ? '' : 'deleted')
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
  $core.int get affinity => $_getIZ(1);
  @$pb.TagNumber(2)
  set affinity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAffinity() => $_has(1);
  @$pb.TagNumber(2)
  void clearAffinity() => clearField(2);

  @$pb.TagNumber(3)
  $3.Timestamp get createdOn => $_getN(2);
  @$pb.TagNumber(3)
  set createdOn($3.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedOn() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedOn() => clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureCreatedOn() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Timestamp get lastEditedOn => $_getN(3);
  @$pb.TagNumber(4)
  set lastEditedOn($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastEditedOn() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastEditedOn() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureLastEditedOn() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get deleted => $_getBF(4);
  @$pb.TagNumber(5)
  set deleted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeleted() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeleted() => clearField(5);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDocument', createEmptyInstance: create)
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

class RetrySetCollectionResponse extends $pb.GeneratedMessage {
  factory RetrySetCollectionResponse() => create();
  RetrySetCollectionResponse._() : super();
  factory RetrySetCollectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RetrySetCollectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RetrySetCollectionResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RetrySetCollectionResponse clone() => RetrySetCollectionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RetrySetCollectionResponse copyWith(void Function(RetrySetCollectionResponse) updates) => super.copyWith((message) => updates(message as RetrySetCollectionResponse)) as RetrySetCollectionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RetrySetCollectionResponse create() => RetrySetCollectionResponse._();
  RetrySetCollectionResponse createEmptyInstance() => create();
  static $pb.PbList<RetrySetCollectionResponse> createRepeated() => $pb.PbList<RetrySetCollectionResponse>();
  @$core.pragma('dart2js:noInline')
  static RetrySetCollectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RetrySetCollectionResponse>(create);
  static RetrySetCollectionResponse? _defaultInstance;
}

enum SetCollectionDocumentResponse_Response {
  document, 
  retrySetCollection, 
  notSet
}

class SetCollectionDocumentResponse extends $pb.GeneratedMessage {
  factory SetCollectionDocumentResponse({
    CollectionDocument? document,
    RetrySetCollectionResponse? retrySetCollection,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    if (retrySetCollection != null) {
      $result.retrySetCollection = retrySetCollection;
    }
    return $result;
  }
  SetCollectionDocumentResponse._() : super();
  factory SetCollectionDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCollectionDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetCollectionDocumentResponse_Response> _SetCollectionDocumentResponse_ResponseByTag = {
    1 : SetCollectionDocumentResponse_Response.document,
    2 : SetCollectionDocumentResponse_Response.retrySetCollection,
    0 : SetCollectionDocumentResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCollectionDocumentResponse', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CollectionDocument>(1, _omitFieldNames ? '' : 'document', subBuilder: CollectionDocument.create)
    ..aOM<RetrySetCollectionResponse>(2, _omitFieldNames ? '' : 'retrySetCollection', subBuilder: RetrySetCollectionResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCollectionDocumentResponse clone() => SetCollectionDocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCollectionDocumentResponse copyWith(void Function(SetCollectionDocumentResponse) updates) => super.copyWith((message) => updates(message as SetCollectionDocumentResponse)) as SetCollectionDocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCollectionDocumentResponse create() => SetCollectionDocumentResponse._();
  SetCollectionDocumentResponse createEmptyInstance() => create();
  static $pb.PbList<SetCollectionDocumentResponse> createRepeated() => $pb.PbList<SetCollectionDocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static SetCollectionDocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCollectionDocumentResponse>(create);
  static SetCollectionDocumentResponse? _defaultInstance;

  SetCollectionDocumentResponse_Response whichResponse() => _SetCollectionDocumentResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CollectionDocument get document => $_getN(0);
  @$pb.TagNumber(1)
  set document(CollectionDocument v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
  @$pb.TagNumber(1)
  CollectionDocument ensureDocument() => $_ensure(0);

  @$pb.TagNumber(2)
  RetrySetCollectionResponse get retrySetCollection => $_getN(1);
  @$pb.TagNumber(2)
  set retrySetCollection(RetrySetCollectionResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRetrySetCollection() => $_has(1);
  @$pb.TagNumber(2)
  void clearRetrySetCollection() => clearField(2);
  @$pb.TagNumber(2)
  RetrySetCollectionResponse ensureRetrySetCollection() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
