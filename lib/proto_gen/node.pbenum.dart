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

class CollectionPropertyType extends $pb.ProtobufEnum {
  static const CollectionPropertyType INTEGER = CollectionPropertyType._(0, _omitEnumNames ? '' : 'INTEGER');
  static const CollectionPropertyType STRING = CollectionPropertyType._(1, _omitEnumNames ? '' : 'STRING');
  static const CollectionPropertyType ARRAY = CollectionPropertyType._(2, _omitEnumNames ? '' : 'ARRAY');

  static const $core.List<CollectionPropertyType> values = <CollectionPropertyType> [
    INTEGER,
    STRING,
    ARRAY,
  ];

  static final $core.Map<$core.int, CollectionPropertyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CollectionPropertyType? valueOf($core.int value) => _byValue[value];

  const CollectionPropertyType._($core.int v, $core.String n) : super(v, n);
}

class Operator extends $pb.ProtobufEnum {
  static const Operator EQUALS = Operator._(0, _omitEnumNames ? '' : 'EQUALS');
  static const Operator NOT_EQUALS = Operator._(1, _omitEnumNames ? '' : 'NOT_EQUALS');
  static const Operator GREATER_THAN = Operator._(2, _omitEnumNames ? '' : 'GREATER_THAN');
  static const Operator LESS_THAN = Operator._(3, _omitEnumNames ? '' : 'LESS_THAN');
  static const Operator GREATER_THAN_OR_EQUALS = Operator._(4, _omitEnumNames ? '' : 'GREATER_THAN_OR_EQUALS');
  static const Operator LESS_THAN_OR_EQUALS = Operator._(5, _omitEnumNames ? '' : 'LESS_THAN_OR_EQUALS');
  static const Operator STARTS_WITH = Operator._(6, _omitEnumNames ? '' : 'STARTS_WITH');
  static const Operator IN = Operator._(7, _omitEnumNames ? '' : 'IN');
  static const Operator NOT_IN = Operator._(8, _omitEnumNames ? '' : 'NOT_IN');

  static const $core.List<Operator> values = <Operator> [
    EQUALS,
    NOT_EQUALS,
    GREATER_THAN,
    LESS_THAN,
    GREATER_THAN_OR_EQUALS,
    LESS_THAN_OR_EQUALS,
    STARTS_WITH,
    IN,
    NOT_IN,
  ];

  static final $core.Map<$core.int, Operator> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Operator? valueOf($core.int value) => _byValue[value];

  const Operator._($core.int v, $core.String n) : super(v, n);
}

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
