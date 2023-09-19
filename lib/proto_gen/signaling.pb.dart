//
//  Generated code. Do not modify.
//  source: signaling.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetAvailableNodesRequest extends $pb.GeneratedMessage {
  factory GetAvailableNodesRequest() => create();
  GetAvailableNodesRequest._() : super();
  factory GetAvailableNodesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAvailableNodesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAvailableNodesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bootstrap'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAvailableNodesRequest clone() => GetAvailableNodesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAvailableNodesRequest copyWith(void Function(GetAvailableNodesRequest) updates) => super.copyWith((message) => updates(message as GetAvailableNodesRequest)) as GetAvailableNodesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAvailableNodesRequest create() => GetAvailableNodesRequest._();
  GetAvailableNodesRequest createEmptyInstance() => create();
  static $pb.PbList<GetAvailableNodesRequest> createRepeated() => $pb.PbList<GetAvailableNodesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAvailableNodesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAvailableNodesRequest>(create);
  static GetAvailableNodesRequest? _defaultInstance;
}

class GetAvailableNodesResponse extends $pb.GeneratedMessage {
  factory GetAvailableNodesResponse({
    $core.Iterable<$core.int>? nodePorts,
  }) {
    final $result = create();
    if (nodePorts != null) {
      $result.nodePorts.addAll(nodePorts);
    }
    return $result;
  }
  GetAvailableNodesResponse._() : super();
  factory GetAvailableNodesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAvailableNodesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAvailableNodesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bootstrap'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'nodePorts', $pb.PbFieldType.K3, protoName: 'nodePorts')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAvailableNodesResponse clone() => GetAvailableNodesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAvailableNodesResponse copyWith(void Function(GetAvailableNodesResponse) updates) => super.copyWith((message) => updates(message as GetAvailableNodesResponse)) as GetAvailableNodesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAvailableNodesResponse create() => GetAvailableNodesResponse._();
  GetAvailableNodesResponse createEmptyInstance() => create();
  static $pb.PbList<GetAvailableNodesResponse> createRepeated() => $pb.PbList<GetAvailableNodesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAvailableNodesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAvailableNodesResponse>(create);
  static GetAvailableNodesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nodePorts => $_getList(0);
}

class PortContainingMessage extends $pb.GeneratedMessage {
  factory PortContainingMessage({
    $core.int? port,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    return $result;
  }
  PortContainingMessage._() : super();
  factory PortContainingMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PortContainingMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PortContainingMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bootstrap'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PortContainingMessage clone() => PortContainingMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PortContainingMessage copyWith(void Function(PortContainingMessage) updates) => super.copyWith((message) => updates(message as PortContainingMessage)) as PortContainingMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortContainingMessage create() => PortContainingMessage._();
  PortContainingMessage createEmptyInstance() => create();
  static $pb.PbList<PortContainingMessage> createRepeated() => $pb.PbList<PortContainingMessage>();
  @$core.pragma('dart2js:noInline')
  static PortContainingMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PortContainingMessage>(create);
  static PortContainingMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get port => $_getIZ(0);
  @$pb.TagNumber(1)
  set port($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);
}

class LoadDiscoveryRequest extends $pb.GeneratedMessage {
  factory LoadDiscoveryRequest() => create();
  LoadDiscoveryRequest._() : super();
  factory LoadDiscoveryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadDiscoveryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoadDiscoveryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bootstrap'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadDiscoveryRequest clone() => LoadDiscoveryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadDiscoveryRequest copyWith(void Function(LoadDiscoveryRequest) updates) => super.copyWith((message) => updates(message as LoadDiscoveryRequest)) as LoadDiscoveryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadDiscoveryRequest create() => LoadDiscoveryRequest._();
  LoadDiscoveryRequest createEmptyInstance() => create();
  static $pb.PbList<LoadDiscoveryRequest> createRepeated() => $pb.PbList<LoadDiscoveryRequest>();
  @$core.pragma('dart2js:noInline')
  static LoadDiscoveryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadDiscoveryRequest>(create);
  static LoadDiscoveryRequest? _defaultInstance;
}

class LoadDiscoveryResponse extends $pb.GeneratedMessage {
  factory LoadDiscoveryResponse({
    $core.int? port,
    $core.int? load,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    if (load != null) {
      $result.load = load;
    }
    return $result;
  }
  LoadDiscoveryResponse._() : super();
  factory LoadDiscoveryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadDiscoveryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoadDiscoveryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bootstrap'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'load', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadDiscoveryResponse clone() => LoadDiscoveryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadDiscoveryResponse copyWith(void Function(LoadDiscoveryResponse) updates) => super.copyWith((message) => updates(message as LoadDiscoveryResponse)) as LoadDiscoveryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadDiscoveryResponse create() => LoadDiscoveryResponse._();
  LoadDiscoveryResponse createEmptyInstance() => create();
  static $pb.PbList<LoadDiscoveryResponse> createRepeated() => $pb.PbList<LoadDiscoveryResponse>();
  @$core.pragma('dart2js:noInline')
  static LoadDiscoveryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadDiscoveryResponse>(create);
  static LoadDiscoveryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get port => $_getIZ(0);
  @$pb.TagNumber(1)
  set port($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get load => $_getIZ(1);
  @$pb.TagNumber(2)
  set load($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoad() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoad() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
