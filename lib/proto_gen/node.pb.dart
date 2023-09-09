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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCollectionDocumentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
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

class SetCollectionDocumentResponse extends $pb.GeneratedMessage {
  factory SetCollectionDocumentResponse({
    CollectionDocument? document,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    return $result;
  }
  SetCollectionDocumentResponse._() : super();
  factory SetCollectionDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCollectionDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCollectionDocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOM<CollectionDocument>(1, _omitFieldNames ? '' : 'document', subBuilder: CollectionDocument.create)
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

class DocumentMetaData extends $pb.GeneratedMessage {
  factory DocumentMetaData({
    $core.String? id,
    $core.int? affinity,
    $2.Timestamp? createdOn,
    $2.Timestamp? lastEditedOn,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentMetaData', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'affinity', $pb.PbFieldType.O3)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'createdOn', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'lastEditedOn', subBuilder: $2.Timestamp.create)
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
  $2.Timestamp get createdOn => $_getN(2);
  @$pb.TagNumber(3)
  set createdOn($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedOn() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedOn() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureCreatedOn() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.Timestamp get lastEditedOn => $_getN(3);
  @$pb.TagNumber(4)
  set lastEditedOn($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastEditedOn() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastEditedOn() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureLastEditedOn() => $_ensure(3);

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

class CollectionMetaData extends $pb.GeneratedMessage {
  factory CollectionMetaData({
    $core.String? id,
    $core.String? name,
    $2.Timestamp? createdOn,
    $core.bool? deleted,
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
    return $result;
  }
  CollectionMetaData._() : super();
  factory CollectionMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionMetaData', package: const $pb.PackageName(_omitMessageNames ? '' : 'node'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'createdOn', subBuilder: $2.Timestamp.create)
    ..aOB(4, _omitFieldNames ? '' : 'deleted')
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

  @$pb.TagNumber(4)
  $core.bool get deleted => $_getBF(3);
  @$pb.TagNumber(4)
  set deleted($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleted() => clearField(4);
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
