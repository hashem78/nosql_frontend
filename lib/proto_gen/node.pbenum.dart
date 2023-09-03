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

class NodeState extends $pb.ProtobufEnum {
  static const NodeState HEAlTHY = NodeState._(0, _omitEnumNames ? '' : 'HEAlTHY');
  static const NodeState WAITING = NodeState._(1, _omitEnumNames ? '' : 'WAITING');
  static const NodeState ERROR = NodeState._(2, _omitEnumNames ? '' : 'ERROR');

  static const $core.List<NodeState> values = <NodeState> [
    HEAlTHY,
    WAITING,
    ERROR,
  ];

  static final $core.Map<$core.int, NodeState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NodeState? valueOf($core.int value) => _byValue[value];

  const NodeState._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
