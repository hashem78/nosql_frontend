import 'package:nosql_frontend/core/schema/schema.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state.g.dart';

@Riverpod()
class ObjectSchemaController extends _$ObjectSchemaController {
  @override
  ObjectSchema build() {
    return const ObjectSchema();
  }

  void addProperty(String propertyName, Schema schema) {
    state = state.copyWith(
      properties: {
        ...state.properties ?? {},
        propertyName: schema,
      },
    );
  }

  void removeProperty(String propertyName) {
    final propertiesCopy = {...state.properties ?? {}};
    propertiesCopy.remove(propertyName);
    state = state.copyWith(properties: propertiesCopy);
  }
}

@riverpod
class StringSchemaController extends _$StringSchemaController {
  @override
  StringSchema build() {
    return const StringSchema();
  }

  void set({
    int? minLength,
    int? maxLength,
    String? pattern,
    String? format,
  }) {
    state = state.copyWith(
      minLength: minLength ?? state.minLength,
      maxLength: maxLength ?? state.maxLength,
      pattern: pattern ?? state.pattern,
      format: format ?? state.format,
    );
  }
}

@riverpod
class IntegerSchemaController extends _$IntegerSchemaController {
  @override
  IntegerSchema build() {
    return const IntegerSchema();
  }

  void set({
    int? multipleOf,
    int? minimum,
    int? exclusiveMinimum,
    int? maximum,
    int? exclusiveMaximum,
  }) {
    state = state.copyWith(
      multipleOf: multipleOf ?? state.multipleOf,
      minimum: minimum ?? state.minimum,
      exclusiveMinimum: exclusiveMinimum ?? state.exclusiveMinimum,
      maximum: maximum ?? state.maximum,
      exclusiveMaximum: exclusiveMaximum ?? state.exclusiveMaximum,
    );
  }
}

@riverpod
class NumberSchemaController extends _$NumberSchemaController {
  @override
  NumberSchema build() {
    return const NumberSchema();
  }

  void set({
    int? multipleOf,
    int? minimum,
    int? exclusiveMinimum,
    int? maximum,
    int? exclusiveMaximum,
  }) {
    state = state.copyWith(
      multipleOf: multipleOf ?? state.multipleOf,
      minimum: minimum ?? state.minimum,
      exclusiveMinimum: exclusiveMinimum ?? state.exclusiveMinimum,
      maximum: maximum ?? state.maximum,
      exclusiveMaximum: exclusiveMaximum ?? state.exclusiveMaximum,
    );
  }
}

@riverpod
class ArraySchemaController extends _$ArraySchemaController {
  @override
  ArraySchema build() {
    return const ArraySchema();
  }

  void set({
    Schema? items,
    Schema? contains,
    int? minContains,
    int? maxContains,
    bool? uniqueItems,
  }) {
    state = state.copyWith(
      items: items ?? state.items,
      contains: contains ?? state.contains,
      minContains: minContains ?? state.minContains,
      maxContains: maxContains ?? state.maxContains,
      uniqueItems: uniqueItems ?? state.uniqueItems,
    );
  }
}

@riverpod
class PropertyNameController extends _$PropertyNameController {
  @override
  String build() {
    return 'prop';
  }

  void set(String val) {
    state = val.isEmpty ? 'prop' : val;
  }
}
