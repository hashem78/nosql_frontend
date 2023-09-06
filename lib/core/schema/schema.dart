library schema;

import 'package:dart_mappable/dart_mappable.dart';

part 'schema.mapper.dart';

@MappableClass(discriminatorKey: 'type', includeSubClasses: [
  StringSchema,
  IntegerSchema,
  NumberSchema,
  ArraySchema,
  ObjectSchema,
])
sealed class Schema with SchemaMappable {
  const Schema();
}

@MappableClass(discriminatorValue: 'string', ignoreNull: true)
final class StringSchema extends Schema with StringSchemaMappable {
  const StringSchema({
    this.minLength,
    this.maxLength,
    this.pattern,
    this.format,
  });

  final int? minLength;
  final int? maxLength;
  final String? pattern;
  final String? format;
}

@MappableClass(discriminatorValue: 'integer', ignoreNull: true)
final class IntegerSchema extends Schema with IntegerSchemaMappable {
  const IntegerSchema({
    this.multipleOf,
    this.minimum,
    this.exclusiveMinimum,
    this.maximum,
    this.exclusiveMaximum,
  });
  final int? multipleOf;
  final int? minimum;
  final int? exclusiveMinimum;
  final int? maximum;
  final int? exclusiveMaximum;
}

@MappableClass(discriminatorValue: 'number', ignoreNull: true)
final class NumberSchema extends Schema with NumberSchemaMappable {
  const NumberSchema({
    this.multipleOf,
    this.minimum,
    this.exclusiveMinimum,
    this.maximum,
    this.exclusiveMaximum,
  });
  final int? multipleOf;
  final int? minimum;
  final int? exclusiveMinimum;
  final int? maximum;
  final int? exclusiveMaximum;
}

@MappableClass(discriminatorKey: 'array', ignoreNull: true)
final class ArraySchema extends Schema with ArraySchemaMappable {
  const ArraySchema({
    this.items,
    this.contains,
    this.minContains,
    this.maxContains,
    this.uniqueItems,
  });
  final Schema? items;
  final Schema? contains;
  final int? minContains;
  final int? maxContains;
  final bool? uniqueItems;
}

@MappableClass(discriminatorValue: 'object', ignoreNull: true)
final class ObjectSchema extends Schema with ObjectSchemaMappable {
  const ObjectSchema({
    this.minProperties,
    this.maxProperties,
    this.properties,
    this.required,
  });

  final Map<String, Schema>? properties;
  final Set<String>? required;
  final int? minProperties;
  final int? maxProperties;

  ObjectSchema addProperty(String propertyName, Schema schema) {
    properties?[propertyName] = schema;
    return this;
  }

  ObjectSchema addRequired(String propertyName) {
    required?.add(propertyName);
    return this;
  }

  void removeRequired(String propertyName) {
    required?.remove(propertyName);
  }

  void removeProperty(String propertyName) {
    properties?.remove(propertyName);
  }
}
