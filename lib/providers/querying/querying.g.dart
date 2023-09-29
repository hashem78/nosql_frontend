// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'querying.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$queryStreamHash() => r'2386cf5aaeadac2e002f219af60ca150b3122dab';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [queryStream].
@ProviderFor(queryStream)
const queryStreamProvider = QueryStreamFamily();

/// See also [queryStream].
class QueryStreamFamily extends Family<AsyncValue<dynamic>> {
  /// See also [queryStream].
  const QueryStreamFamily();

  /// See also [queryStream].
  QueryStreamProvider call({
    required String collectionId,
    required String property,
    required Operator operator,
    required String value,
  }) {
    return QueryStreamProvider(
      collectionId: collectionId,
      property: property,
      operator: operator,
      value: value,
    );
  }

  @override
  QueryStreamProvider getProviderOverride(
    covariant QueryStreamProvider provider,
  ) {
    return call(
      collectionId: provider.collectionId,
      property: provider.property,
      operator: provider.operator,
      value: provider.value,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    nodeServiceProvider,
    jwtTokenProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    nodeServiceProvider,
    ...?nodeServiceProvider.allTransitiveDependencies,
    jwtTokenProvider,
    ...?jwtTokenProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'queryStreamProvider';
}

/// See also [queryStream].
class QueryStreamProvider extends AutoDisposeStreamProvider<dynamic> {
  /// See also [queryStream].
  QueryStreamProvider({
    required String collectionId,
    required String property,
    required Operator operator,
    required String value,
  }) : this._internal(
          (ref) => queryStream(
            ref as QueryStreamRef,
            collectionId: collectionId,
            property: property,
            operator: operator,
            value: value,
          ),
          from: queryStreamProvider,
          name: r'queryStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$queryStreamHash,
          dependencies: QueryStreamFamily._dependencies,
          allTransitiveDependencies:
              QueryStreamFamily._allTransitiveDependencies,
          collectionId: collectionId,
          property: property,
          operator: operator,
          value: value,
        );

  QueryStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collectionId,
    required this.property,
    required this.operator,
    required this.value,
  }) : super.internal();

  final String collectionId;
  final String property;
  final Operator operator;
  final String value;

  @override
  Override overrideWith(
    Stream<dynamic> Function(QueryStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QueryStreamProvider._internal(
        (ref) => create(ref as QueryStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        collectionId: collectionId,
        property: property,
        operator: operator,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<dynamic> createElement() {
    return _QueryStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QueryStreamProvider &&
        other.collectionId == collectionId &&
        other.property == property &&
        other.operator == operator &&
        other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionId.hashCode);
    hash = _SystemHash.combine(hash, property.hashCode);
    hash = _SystemHash.combine(hash, operator.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin QueryStreamRef on AutoDisposeStreamProviderRef<dynamic> {
  /// The parameter `collectionId` of this provider.
  String get collectionId;

  /// The parameter `property` of this provider.
  String get property;

  /// The parameter `operator` of this provider.
  Operator get operator;

  /// The parameter `value` of this provider.
  String get value;
}

class _QueryStreamProviderElement
    extends AutoDisposeStreamProviderElement<dynamic> with QueryStreamRef {
  _QueryStreamProviderElement(super.provider);

  @override
  String get collectionId => (origin as QueryStreamProvider).collectionId;
  @override
  String get property => (origin as QueryStreamProvider).property;
  @override
  Operator get operator => (origin as QueryStreamProvider).operator;
  @override
  String get value => (origin as QueryStreamProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
