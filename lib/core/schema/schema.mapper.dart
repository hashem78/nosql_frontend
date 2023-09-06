// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'schema.dart';

class SchemaMapper extends ClassMapperBase<Schema> {
  SchemaMapper._();

  static SchemaMapper? _instance;
  static SchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SchemaMapper._());
      StringSchemaMapper.ensureInitialized();
      IntegerSchemaMapper.ensureInitialized();
      NumberSchemaMapper.ensureInitialized();
      ArraySchemaMapper.ensureInitialized();
      ObjectSchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Schema';

  @override
  final Map<Symbol, Field<Schema, dynamic>> fields = const {};

  static Schema _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Schema', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static Schema fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Schema>(map));
  }

  static Schema fromJson(String json) {
    return _guard((c) => c.fromJson<Schema>(json));
  }
}

mixin SchemaMappable {
  String toJson();
  Map<String, dynamic> toMap();
  SchemaCopyWith<Schema, Schema, Schema> get copyWith;
}

abstract class SchemaCopyWith<$R, $In extends Schema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  SchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class StringSchemaMapper extends SubClassMapperBase<StringSchema> {
  StringSchemaMapper._();

  static StringSchemaMapper? _instance;
  static StringSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StringSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'StringSchema';

  static int? _$minLength(StringSchema v) => v.minLength;
  static const Field<StringSchema, int> _f$minLength =
      Field('minLength', _$minLength, opt: true);
  static int? _$maxLength(StringSchema v) => v.maxLength;
  static const Field<StringSchema, int> _f$maxLength =
      Field('maxLength', _$maxLength, opt: true);
  static String? _$pattern(StringSchema v) => v.pattern;
  static const Field<StringSchema, String> _f$pattern =
      Field('pattern', _$pattern, opt: true);
  static String? _$format(StringSchema v) => v.format;
  static const Field<StringSchema, String> _f$format =
      Field('format', _$format, opt: true);

  @override
  final Map<Symbol, Field<StringSchema, dynamic>> fields = const {
    #minLength: _f$minLength,
    #maxLength: _f$maxLength,
    #pattern: _f$pattern,
    #format: _f$format,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'string';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static StringSchema _instantiate(DecodingData data) {
    return StringSchema(
        minLength: data.dec(_f$minLength),
        maxLength: data.dec(_f$maxLength),
        pattern: data.dec(_f$pattern),
        format: data.dec(_f$format));
  }

  @override
  final Function instantiate = _instantiate;

  static StringSchema fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<StringSchema>(map));
  }

  static StringSchema fromJson(String json) {
    return _guard((c) => c.fromJson<StringSchema>(json));
  }
}

mixin StringSchemaMappable {
  String toJson() {
    return StringSchemaMapper._guard((c) => c.toJson(this as StringSchema));
  }

  Map<String, dynamic> toMap() {
    return StringSchemaMapper._guard((c) => c.toMap(this as StringSchema));
  }

  StringSchemaCopyWith<StringSchema, StringSchema, StringSchema> get copyWith =>
      _StringSchemaCopyWithImpl(this as StringSchema, $identity, $identity);
  @override
  String toString() {
    return StringSchemaMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            StringSchemaMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return StringSchemaMapper._guard((c) => c.hash(this));
  }
}

extension StringSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StringSchema, $Out> {
  StringSchemaCopyWith<$R, StringSchema, $Out> get $asStringSchema =>
      $base.as((v, t, t2) => _StringSchemaCopyWithImpl(v, t, t2));
}

abstract class StringSchemaCopyWith<$R, $In extends StringSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  $R call({int? minLength, int? maxLength, String? pattern, String? format});
  StringSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _StringSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StringSchema, $Out>
    implements StringSchemaCopyWith<$R, StringSchema, $Out> {
  _StringSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StringSchema> $mapper =
      StringSchemaMapper.ensureInitialized();
  @override
  $R call(
          {Object? minLength = $none,
          Object? maxLength = $none,
          Object? pattern = $none,
          Object? format = $none}) =>
      $apply(FieldCopyWithData({
        if (minLength != $none) #minLength: minLength,
        if (maxLength != $none) #maxLength: maxLength,
        if (pattern != $none) #pattern: pattern,
        if (format != $none) #format: format
      }));
  @override
  StringSchema $make(CopyWithData data) => StringSchema(
      minLength: data.get(#minLength, or: $value.minLength),
      maxLength: data.get(#maxLength, or: $value.maxLength),
      pattern: data.get(#pattern, or: $value.pattern),
      format: data.get(#format, or: $value.format));

  @override
  StringSchemaCopyWith<$R2, StringSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _StringSchemaCopyWithImpl($value, $cast, t);
}

class IntegerSchemaMapper extends SubClassMapperBase<IntegerSchema> {
  IntegerSchemaMapper._();

  static IntegerSchemaMapper? _instance;
  static IntegerSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IntegerSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'IntegerSchema';

  static int? _$multipleOf(IntegerSchema v) => v.multipleOf;
  static const Field<IntegerSchema, int> _f$multipleOf =
      Field('multipleOf', _$multipleOf, opt: true);
  static int? _$minimum(IntegerSchema v) => v.minimum;
  static const Field<IntegerSchema, int> _f$minimum =
      Field('minimum', _$minimum, opt: true);
  static int? _$exclusiveMinimum(IntegerSchema v) => v.exclusiveMinimum;
  static const Field<IntegerSchema, int> _f$exclusiveMinimum =
      Field('exclusiveMinimum', _$exclusiveMinimum, opt: true);
  static int? _$maximum(IntegerSchema v) => v.maximum;
  static const Field<IntegerSchema, int> _f$maximum =
      Field('maximum', _$maximum, opt: true);
  static int? _$exclusiveMaximum(IntegerSchema v) => v.exclusiveMaximum;
  static const Field<IntegerSchema, int> _f$exclusiveMaximum =
      Field('exclusiveMaximum', _$exclusiveMaximum, opt: true);

  @override
  final Map<Symbol, Field<IntegerSchema, dynamic>> fields = const {
    #multipleOf: _f$multipleOf,
    #minimum: _f$minimum,
    #exclusiveMinimum: _f$exclusiveMinimum,
    #maximum: _f$maximum,
    #exclusiveMaximum: _f$exclusiveMaximum,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'integer';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static IntegerSchema _instantiate(DecodingData data) {
    return IntegerSchema(
        multipleOf: data.dec(_f$multipleOf),
        minimum: data.dec(_f$minimum),
        exclusiveMinimum: data.dec(_f$exclusiveMinimum),
        maximum: data.dec(_f$maximum),
        exclusiveMaximum: data.dec(_f$exclusiveMaximum));
  }

  @override
  final Function instantiate = _instantiate;

  static IntegerSchema fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<IntegerSchema>(map));
  }

  static IntegerSchema fromJson(String json) {
    return _guard((c) => c.fromJson<IntegerSchema>(json));
  }
}

mixin IntegerSchemaMappable {
  String toJson() {
    return IntegerSchemaMapper._guard((c) => c.toJson(this as IntegerSchema));
  }

  Map<String, dynamic> toMap() {
    return IntegerSchemaMapper._guard((c) => c.toMap(this as IntegerSchema));
  }

  IntegerSchemaCopyWith<IntegerSchema, IntegerSchema, IntegerSchema>
      get copyWith => _IntegerSchemaCopyWithImpl(
          this as IntegerSchema, $identity, $identity);
  @override
  String toString() {
    return IntegerSchemaMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            IntegerSchemaMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return IntegerSchemaMapper._guard((c) => c.hash(this));
  }
}

extension IntegerSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, IntegerSchema, $Out> {
  IntegerSchemaCopyWith<$R, IntegerSchema, $Out> get $asIntegerSchema =>
      $base.as((v, t, t2) => _IntegerSchemaCopyWithImpl(v, t, t2));
}

abstract class IntegerSchemaCopyWith<$R, $In extends IntegerSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {int? multipleOf,
      int? minimum,
      int? exclusiveMinimum,
      int? maximum,
      int? exclusiveMaximum});
  IntegerSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IntegerSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, IntegerSchema, $Out>
    implements IntegerSchemaCopyWith<$R, IntegerSchema, $Out> {
  _IntegerSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IntegerSchema> $mapper =
      IntegerSchemaMapper.ensureInitialized();
  @override
  $R call(
          {Object? multipleOf = $none,
          Object? minimum = $none,
          Object? exclusiveMinimum = $none,
          Object? maximum = $none,
          Object? exclusiveMaximum = $none}) =>
      $apply(FieldCopyWithData({
        if (multipleOf != $none) #multipleOf: multipleOf,
        if (minimum != $none) #minimum: minimum,
        if (exclusiveMinimum != $none) #exclusiveMinimum: exclusiveMinimum,
        if (maximum != $none) #maximum: maximum,
        if (exclusiveMaximum != $none) #exclusiveMaximum: exclusiveMaximum
      }));
  @override
  IntegerSchema $make(CopyWithData data) => IntegerSchema(
      multipleOf: data.get(#multipleOf, or: $value.multipleOf),
      minimum: data.get(#minimum, or: $value.minimum),
      exclusiveMinimum:
          data.get(#exclusiveMinimum, or: $value.exclusiveMinimum),
      maximum: data.get(#maximum, or: $value.maximum),
      exclusiveMaximum:
          data.get(#exclusiveMaximum, or: $value.exclusiveMaximum));

  @override
  IntegerSchemaCopyWith<$R2, IntegerSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _IntegerSchemaCopyWithImpl($value, $cast, t);
}

class NumberSchemaMapper extends SubClassMapperBase<NumberSchema> {
  NumberSchemaMapper._();

  static NumberSchemaMapper? _instance;
  static NumberSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NumberSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NumberSchema';

  static int? _$multipleOf(NumberSchema v) => v.multipleOf;
  static const Field<NumberSchema, int> _f$multipleOf =
      Field('multipleOf', _$multipleOf, opt: true);
  static int? _$minimum(NumberSchema v) => v.minimum;
  static const Field<NumberSchema, int> _f$minimum =
      Field('minimum', _$minimum, opt: true);
  static int? _$exclusiveMinimum(NumberSchema v) => v.exclusiveMinimum;
  static const Field<NumberSchema, int> _f$exclusiveMinimum =
      Field('exclusiveMinimum', _$exclusiveMinimum, opt: true);
  static int? _$maximum(NumberSchema v) => v.maximum;
  static const Field<NumberSchema, int> _f$maximum =
      Field('maximum', _$maximum, opt: true);
  static int? _$exclusiveMaximum(NumberSchema v) => v.exclusiveMaximum;
  static const Field<NumberSchema, int> _f$exclusiveMaximum =
      Field('exclusiveMaximum', _$exclusiveMaximum, opt: true);

  @override
  final Map<Symbol, Field<NumberSchema, dynamic>> fields = const {
    #multipleOf: _f$multipleOf,
    #minimum: _f$minimum,
    #exclusiveMinimum: _f$exclusiveMinimum,
    #maximum: _f$maximum,
    #exclusiveMaximum: _f$exclusiveMaximum,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'number';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static NumberSchema _instantiate(DecodingData data) {
    return NumberSchema(
        multipleOf: data.dec(_f$multipleOf),
        minimum: data.dec(_f$minimum),
        exclusiveMinimum: data.dec(_f$exclusiveMinimum),
        maximum: data.dec(_f$maximum),
        exclusiveMaximum: data.dec(_f$exclusiveMaximum));
  }

  @override
  final Function instantiate = _instantiate;

  static NumberSchema fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NumberSchema>(map));
  }

  static NumberSchema fromJson(String json) {
    return _guard((c) => c.fromJson<NumberSchema>(json));
  }
}

mixin NumberSchemaMappable {
  String toJson() {
    return NumberSchemaMapper._guard((c) => c.toJson(this as NumberSchema));
  }

  Map<String, dynamic> toMap() {
    return NumberSchemaMapper._guard((c) => c.toMap(this as NumberSchema));
  }

  NumberSchemaCopyWith<NumberSchema, NumberSchema, NumberSchema> get copyWith =>
      _NumberSchemaCopyWithImpl(this as NumberSchema, $identity, $identity);
  @override
  String toString() {
    return NumberSchemaMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NumberSchemaMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NumberSchemaMapper._guard((c) => c.hash(this));
  }
}

extension NumberSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NumberSchema, $Out> {
  NumberSchemaCopyWith<$R, NumberSchema, $Out> get $asNumberSchema =>
      $base.as((v, t, t2) => _NumberSchemaCopyWithImpl(v, t, t2));
}

abstract class NumberSchemaCopyWith<$R, $In extends NumberSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {int? multipleOf,
      int? minimum,
      int? exclusiveMinimum,
      int? maximum,
      int? exclusiveMaximum});
  NumberSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NumberSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NumberSchema, $Out>
    implements NumberSchemaCopyWith<$R, NumberSchema, $Out> {
  _NumberSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NumberSchema> $mapper =
      NumberSchemaMapper.ensureInitialized();
  @override
  $R call(
          {Object? multipleOf = $none,
          Object? minimum = $none,
          Object? exclusiveMinimum = $none,
          Object? maximum = $none,
          Object? exclusiveMaximum = $none}) =>
      $apply(FieldCopyWithData({
        if (multipleOf != $none) #multipleOf: multipleOf,
        if (minimum != $none) #minimum: minimum,
        if (exclusiveMinimum != $none) #exclusiveMinimum: exclusiveMinimum,
        if (maximum != $none) #maximum: maximum,
        if (exclusiveMaximum != $none) #exclusiveMaximum: exclusiveMaximum
      }));
  @override
  NumberSchema $make(CopyWithData data) => NumberSchema(
      multipleOf: data.get(#multipleOf, or: $value.multipleOf),
      minimum: data.get(#minimum, or: $value.minimum),
      exclusiveMinimum:
          data.get(#exclusiveMinimum, or: $value.exclusiveMinimum),
      maximum: data.get(#maximum, or: $value.maximum),
      exclusiveMaximum:
          data.get(#exclusiveMaximum, or: $value.exclusiveMaximum));

  @override
  NumberSchemaCopyWith<$R2, NumberSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NumberSchemaCopyWithImpl($value, $cast, t);
}

class ArraySchemaMapper extends SubClassMapperBase<ArraySchema> {
  ArraySchemaMapper._();

  static ArraySchemaMapper? _instance;
  static ArraySchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArraySchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'ArraySchema';

  static Schema? _$items(ArraySchema v) => v.items;
  static const Field<ArraySchema, Schema> _f$items =
      Field('items', _$items, opt: true);
  static Schema? _$contains(ArraySchema v) => v.contains;
  static const Field<ArraySchema, Schema> _f$contains =
      Field('contains', _$contains, opt: true);
  static int? _$minContains(ArraySchema v) => v.minContains;
  static const Field<ArraySchema, int> _f$minContains =
      Field('minContains', _$minContains, opt: true);
  static int? _$maxContains(ArraySchema v) => v.maxContains;
  static const Field<ArraySchema, int> _f$maxContains =
      Field('maxContains', _$maxContains, opt: true);
  static bool? _$uniqueItems(ArraySchema v) => v.uniqueItems;
  static const Field<ArraySchema, bool> _f$uniqueItems =
      Field('uniqueItems', _$uniqueItems, opt: true);

  @override
  final Map<Symbol, Field<ArraySchema, dynamic>> fields = const {
    #items: _f$items,
    #contains: _f$contains,
    #minContains: _f$minContains,
    #maxContains: _f$maxContains,
    #uniqueItems: _f$uniqueItems,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'ArraySchema';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ArraySchema _instantiate(DecodingData data) {
    return ArraySchema(
        items: data.dec(_f$items),
        contains: data.dec(_f$contains),
        minContains: data.dec(_f$minContains),
        maxContains: data.dec(_f$maxContains),
        uniqueItems: data.dec(_f$uniqueItems));
  }

  @override
  final Function instantiate = _instantiate;

  static ArraySchema fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<ArraySchema>(map));
  }

  static ArraySchema fromJson(String json) {
    return _guard((c) => c.fromJson<ArraySchema>(json));
  }
}

mixin ArraySchemaMappable {
  String toJson() {
    return ArraySchemaMapper._guard((c) => c.toJson(this as ArraySchema));
  }

  Map<String, dynamic> toMap() {
    return ArraySchemaMapper._guard((c) => c.toMap(this as ArraySchema));
  }

  ArraySchemaCopyWith<ArraySchema, ArraySchema, ArraySchema> get copyWith =>
      _ArraySchemaCopyWithImpl(this as ArraySchema, $identity, $identity);
  @override
  String toString() {
    return ArraySchemaMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ArraySchemaMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return ArraySchemaMapper._guard((c) => c.hash(this));
  }
}

extension ArraySchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArraySchema, $Out> {
  ArraySchemaCopyWith<$R, ArraySchema, $Out> get $asArraySchema =>
      $base.as((v, t, t2) => _ArraySchemaCopyWithImpl(v, t, t2));
}

abstract class ArraySchemaCopyWith<$R, $In extends ArraySchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  SchemaCopyWith<$R, Schema, Schema>? get items;
  SchemaCopyWith<$R, Schema, Schema>? get contains;
  @override
  $R call(
      {Schema? items,
      Schema? contains,
      int? minContains,
      int? maxContains,
      bool? uniqueItems});
  ArraySchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArraySchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArraySchema, $Out>
    implements ArraySchemaCopyWith<$R, ArraySchema, $Out> {
  _ArraySchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArraySchema> $mapper =
      ArraySchemaMapper.ensureInitialized();
  @override
  SchemaCopyWith<$R, Schema, Schema>? get items =>
      $value.items?.copyWith.$chain((v) => call(items: v));
  @override
  SchemaCopyWith<$R, Schema, Schema>? get contains =>
      $value.contains?.copyWith.$chain((v) => call(contains: v));
  @override
  $R call(
          {Object? items = $none,
          Object? contains = $none,
          Object? minContains = $none,
          Object? maxContains = $none,
          Object? uniqueItems = $none}) =>
      $apply(FieldCopyWithData({
        if (items != $none) #items: items,
        if (contains != $none) #contains: contains,
        if (minContains != $none) #minContains: minContains,
        if (maxContains != $none) #maxContains: maxContains,
        if (uniqueItems != $none) #uniqueItems: uniqueItems
      }));
  @override
  ArraySchema $make(CopyWithData data) => ArraySchema(
      items: data.get(#items, or: $value.items),
      contains: data.get(#contains, or: $value.contains),
      minContains: data.get(#minContains, or: $value.minContains),
      maxContains: data.get(#maxContains, or: $value.maxContains),
      uniqueItems: data.get(#uniqueItems, or: $value.uniqueItems));

  @override
  ArraySchemaCopyWith<$R2, ArraySchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ArraySchemaCopyWithImpl($value, $cast, t);
}

class ObjectSchemaMapper extends SubClassMapperBase<ObjectSchema> {
  ObjectSchemaMapper._();

  static ObjectSchemaMapper? _instance;
  static ObjectSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ObjectSchemaMapper._());
      SchemaMapper.ensureInitialized().addSubMapper(_instance!);
      SchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'ObjectSchema';

  static int? _$minProperties(ObjectSchema v) => v.minProperties;
  static const Field<ObjectSchema, int> _f$minProperties =
      Field('minProperties', _$minProperties, opt: true);
  static int? _$maxProperties(ObjectSchema v) => v.maxProperties;
  static const Field<ObjectSchema, int> _f$maxProperties =
      Field('maxProperties', _$maxProperties, opt: true);
  static Map<String, Schema>? _$properties(ObjectSchema v) => v.properties;
  static const Field<ObjectSchema, Map<String, Schema>> _f$properties =
      Field('properties', _$properties, opt: true);
  static Set<String>? _$required(ObjectSchema v) => v.required;
  static const Field<ObjectSchema, Set<String>> _f$required =
      Field('required', _$required, opt: true);

  @override
  final Map<Symbol, Field<ObjectSchema, dynamic>> fields = const {
    #minProperties: _f$minProperties,
    #maxProperties: _f$maxProperties,
    #properties: _f$properties,
    #required: _f$required,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'object';
  @override
  late final ClassMapperBase superMapper = SchemaMapper.ensureInitialized();

  static ObjectSchema _instantiate(DecodingData data) {
    return ObjectSchema(
        minProperties: data.dec(_f$minProperties),
        maxProperties: data.dec(_f$maxProperties),
        properties: data.dec(_f$properties),
        required: data.dec(_f$required));
  }

  @override
  final Function instantiate = _instantiate;

  static ObjectSchema fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<ObjectSchema>(map));
  }

  static ObjectSchema fromJson(String json) {
    return _guard((c) => c.fromJson<ObjectSchema>(json));
  }
}

mixin ObjectSchemaMappable {
  String toJson() {
    return ObjectSchemaMapper._guard((c) => c.toJson(this as ObjectSchema));
  }

  Map<String, dynamic> toMap() {
    return ObjectSchemaMapper._guard((c) => c.toMap(this as ObjectSchema));
  }

  ObjectSchemaCopyWith<ObjectSchema, ObjectSchema, ObjectSchema> get copyWith =>
      _ObjectSchemaCopyWithImpl(this as ObjectSchema, $identity, $identity);
  @override
  String toString() {
    return ObjectSchemaMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ObjectSchemaMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return ObjectSchemaMapper._guard((c) => c.hash(this));
  }
}

extension ObjectSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ObjectSchema, $Out> {
  ObjectSchemaCopyWith<$R, ObjectSchema, $Out> get $asObjectSchema =>
      $base.as((v, t, t2) => _ObjectSchemaCopyWithImpl(v, t, t2));
}

abstract class ObjectSchemaCopyWith<$R, $In extends ObjectSchema, $Out>
    implements SchemaCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, Schema, SchemaCopyWith<$R, Schema, Schema>>?
      get properties;
  @override
  $R call(
      {int? minProperties,
      int? maxProperties,
      Map<String, Schema>? properties,
      Set<String>? required});
  ObjectSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ObjectSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ObjectSchema, $Out>
    implements ObjectSchemaCopyWith<$R, ObjectSchema, $Out> {
  _ObjectSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ObjectSchema> $mapper =
      ObjectSchemaMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, Schema, SchemaCopyWith<$R, Schema, Schema>>?
      get properties => $value.properties != null
          ? MapCopyWith($value.properties!, (v, t) => v.copyWith.$chain(t),
              (v) => call(properties: v))
          : null;
  @override
  $R call(
          {Object? minProperties = $none,
          Object? maxProperties = $none,
          Object? properties = $none,
          Object? required = $none}) =>
      $apply(FieldCopyWithData({
        if (minProperties != $none) #minProperties: minProperties,
        if (maxProperties != $none) #maxProperties: maxProperties,
        if (properties != $none) #properties: properties,
        if (required != $none) #required: required
      }));
  @override
  ObjectSchema $make(CopyWithData data) => ObjectSchema(
      minProperties: data.get(#minProperties, or: $value.minProperties),
      maxProperties: data.get(#maxProperties, or: $value.maxProperties),
      properties: data.get(#properties, or: $value.properties),
      required: data.get(#required, or: $value.required));

  @override
  ObjectSchemaCopyWith<$R2, ObjectSchema, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ObjectSchemaCopyWithImpl($value, $cast, t);
}
