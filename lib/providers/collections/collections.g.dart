// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$collectionsHash() => r'a0f12bdd64f9196d7fc3862386f9a3f201c84fc7';

/// See also [collections].
@ProviderFor(collections)
final collectionsProvider =
    AutoDisposeFutureProvider<GetCollectionsResponse>.internal(
  collections,
  name: r'collectionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$collectionsHash,
  dependencies: <ProviderOrFamily>[nodeServiceProvider, jwtTokenProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    nodeServiceProvider,
    ...?nodeServiceProvider.allTransitiveDependencies,
    jwtTokenProvider,
    ...?jwtTokenProvider.allTransitiveDependencies
  },
);

typedef CollectionsRef = AutoDisposeFutureProviderRef<GetCollectionsResponse>;
String _$collectionPropertiesHash() =>
    r'924761f7bc04b829d1c934eda75e15e783da618d';

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

/// See also [collectionProperties].
@ProviderFor(collectionProperties)
const collectionPropertiesProvider = CollectionPropertiesFamily();

/// See also [collectionProperties].
class CollectionPropertiesFamily extends Family<AsyncValue<List<String>>> {
  /// See also [collectionProperties].
  const CollectionPropertiesFamily();

  /// See also [collectionProperties].
  CollectionPropertiesProvider call(
    String collectionId,
  ) {
    return CollectionPropertiesProvider(
      collectionId,
    );
  }

  @override
  CollectionPropertiesProvider getProviderOverride(
    covariant CollectionPropertiesProvider provider,
  ) {
    return call(
      provider.collectionId,
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
  String? get name => r'collectionPropertiesProvider';
}

/// See also [collectionProperties].
class CollectionPropertiesProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [collectionProperties].
  CollectionPropertiesProvider(
    String collectionId,
  ) : this._internal(
          (ref) => collectionProperties(
            ref as CollectionPropertiesRef,
            collectionId,
          ),
          from: collectionPropertiesProvider,
          name: r'collectionPropertiesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$collectionPropertiesHash,
          dependencies: CollectionPropertiesFamily._dependencies,
          allTransitiveDependencies:
              CollectionPropertiesFamily._allTransitiveDependencies,
          collectionId: collectionId,
        );

  CollectionPropertiesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collectionId,
  }) : super.internal();

  final String collectionId;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(CollectionPropertiesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CollectionPropertiesProvider._internal(
        (ref) => create(ref as CollectionPropertiesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        collectionId: collectionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _CollectionPropertiesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CollectionPropertiesProvider &&
        other.collectionId == collectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CollectionPropertiesRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `collectionId` of this provider.
  String get collectionId;
}

class _CollectionPropertiesProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with CollectionPropertiesRef {
  _CollectionPropertiesProviderElement(super.provider);

  @override
  String get collectionId =>
      (origin as CollectionPropertiesProvider).collectionId;
}

String _$collectionMetaDataHash() =>
    r'89d1392d713aa9d2dfdc09c786a1bda440ea6919';

/// See also [collectionMetaData].
@ProviderFor(collectionMetaData)
const collectionMetaDataProvider = CollectionMetaDataFamily();

/// See also [collectionMetaData].
class CollectionMetaDataFamily extends Family<AsyncValue<CollectionMetaData>> {
  /// See also [collectionMetaData].
  const CollectionMetaDataFamily();

  /// See also [collectionMetaData].
  CollectionMetaDataProvider call(
    String collectionId,
  ) {
    return CollectionMetaDataProvider(
      collectionId,
    );
  }

  @override
  CollectionMetaDataProvider getProviderOverride(
    covariant CollectionMetaDataProvider provider,
  ) {
    return call(
      provider.collectionId,
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
  String? get name => r'collectionMetaDataProvider';
}

/// See also [collectionMetaData].
class CollectionMetaDataProvider
    extends AutoDisposeFutureProvider<CollectionMetaData> {
  /// See also [collectionMetaData].
  CollectionMetaDataProvider(
    String collectionId,
  ) : this._internal(
          (ref) => collectionMetaData(
            ref as CollectionMetaDataRef,
            collectionId,
          ),
          from: collectionMetaDataProvider,
          name: r'collectionMetaDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$collectionMetaDataHash,
          dependencies: CollectionMetaDataFamily._dependencies,
          allTransitiveDependencies:
              CollectionMetaDataFamily._allTransitiveDependencies,
          collectionId: collectionId,
        );

  CollectionMetaDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collectionId,
  }) : super.internal();

  final String collectionId;

  @override
  Override overrideWith(
    FutureOr<CollectionMetaData> Function(CollectionMetaDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CollectionMetaDataProvider._internal(
        (ref) => create(ref as CollectionMetaDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        collectionId: collectionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CollectionMetaData> createElement() {
    return _CollectionMetaDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CollectionMetaDataProvider &&
        other.collectionId == collectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CollectionMetaDataRef
    on AutoDisposeFutureProviderRef<CollectionMetaData> {
  /// The parameter `collectionId` of this provider.
  String get collectionId;
}

class _CollectionMetaDataProviderElement
    extends AutoDisposeFutureProviderElement<CollectionMetaData>
    with CollectionMetaDataRef {
  _CollectionMetaDataProviderElement(super.provider);

  @override
  String get collectionId =>
      (origin as CollectionMetaDataProvider).collectionId;
}

String _$compoundIndexesHash() => r'ed42dffade94b42a990425f6dadc3fda17dce5cb';

/// See also [compoundIndexes].
@ProviderFor(compoundIndexes)
const compoundIndexesProvider = CompoundIndexesFamily();

/// See also [compoundIndexes].
class CompoundIndexesFamily extends Family<AsyncValue<List<String>>> {
  /// See also [compoundIndexes].
  const CompoundIndexesFamily();

  /// See also [compoundIndexes].
  CompoundIndexesProvider call(
    String collectionId,
  ) {
    return CompoundIndexesProvider(
      collectionId,
    );
  }

  @override
  CompoundIndexesProvider getProviderOverride(
    covariant CompoundIndexesProvider provider,
  ) {
    return call(
      provider.collectionId,
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
  String? get name => r'compoundIndexesProvider';
}

/// See also [compoundIndexes].
class CompoundIndexesProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [compoundIndexes].
  CompoundIndexesProvider(
    String collectionId,
  ) : this._internal(
          (ref) => compoundIndexes(
            ref as CompoundIndexesRef,
            collectionId,
          ),
          from: compoundIndexesProvider,
          name: r'compoundIndexesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$compoundIndexesHash,
          dependencies: CompoundIndexesFamily._dependencies,
          allTransitiveDependencies:
              CompoundIndexesFamily._allTransitiveDependencies,
          collectionId: collectionId,
        );

  CompoundIndexesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collectionId,
  }) : super.internal();

  final String collectionId;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(CompoundIndexesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompoundIndexesProvider._internal(
        (ref) => create(ref as CompoundIndexesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        collectionId: collectionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _CompoundIndexesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompoundIndexesProvider &&
        other.collectionId == collectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompoundIndexesRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `collectionId` of this provider.
  String get collectionId;
}

class _CompoundIndexesProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with CompoundIndexesRef {
  _CompoundIndexesProviderElement(super.provider);

  @override
  String get collectionId => (origin as CompoundIndexesProvider).collectionId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
