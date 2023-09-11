// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$collectionPropertiesHash() =>
    r'5ad85de7da87f5d97085d781fdd70254c9c17085';

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
    nodeServiceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    nodeServiceProvider,
    ...?nodeServiceProvider.allTransitiveDependencies
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
    r'2894f40827242668b9c3c746488107fc6c4e7a4b';

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
    nodeServiceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    nodeServiceProvider,
    ...?nodeServiceProvider.allTransitiveDependencies
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

String _$clientHelloHash() => r'75529343ed022beb4dba43d654982955ef70d6f0';

/// See also [clientHello].
@ProviderFor(clientHello)
final clientHelloProvider =
    AutoDisposeStreamProvider<ClientHelloResponse>.internal(
  clientHello,
  name: r'clientHelloProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHelloHash,
  dependencies: <ProviderOrFamily>[nodeServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    nodeServiceProvider,
    ...?nodeServiceProvider.allTransitiveDependencies
  },
);

typedef ClientHelloRef = AutoDisposeStreamProviderRef<ClientHelloResponse>;
String _$collectionsHash() => r'4e1d2617720238bb972b6f0e7208be9d6068fbdc';

/// See also [collections].
@ProviderFor(collections)
final collectionsProvider =
    AutoDisposeFutureProvider<GetCollectionsResponse>.internal(
  collections,
  name: r'collectionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$collectionsHash,
  dependencies: <ProviderOrFamily>[nodeServiceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    nodeServiceProvider,
    ...?nodeServiceProvider.allTransitiveDependencies
  },
);

typedef CollectionsRef = AutoDisposeFutureProviderRef<GetCollectionsResponse>;
String _$documentsHash() => r'24358a440a8ee782720322710fd75317fab43d1f';

/// See also [documents].
@ProviderFor(documents)
const documentsProvider = DocumentsFamily();

/// See also [documents].
class DocumentsFamily extends Family<AsyncValue<CollectionDocument>> {
  /// See also [documents].
  const DocumentsFamily();

  /// See also [documents].
  DocumentsProvider call(
    String collectionId,
  ) {
    return DocumentsProvider(
      collectionId,
    );
  }

  @override
  DocumentsProvider getProviderOverride(
    covariant DocumentsProvider provider,
  ) {
    return call(
      provider.collectionId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    nodeServiceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    nodeServiceProvider,
    ...?nodeServiceProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'documentsProvider';
}

/// See also [documents].
class DocumentsProvider extends AutoDisposeStreamProvider<CollectionDocument> {
  /// See also [documents].
  DocumentsProvider(
    String collectionId,
  ) : this._internal(
          (ref) => documents(
            ref as DocumentsRef,
            collectionId,
          ),
          from: documentsProvider,
          name: r'documentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$documentsHash,
          dependencies: DocumentsFamily._dependencies,
          allTransitiveDependencies: DocumentsFamily._allTransitiveDependencies,
          collectionId: collectionId,
        );

  DocumentsProvider._internal(
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
    Stream<CollectionDocument> Function(DocumentsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DocumentsProvider._internal(
        (ref) => create(ref as DocumentsRef),
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
  AutoDisposeStreamProviderElement<CollectionDocument> createElement() {
    return _DocumentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DocumentsProvider && other.collectionId == collectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DocumentsRef on AutoDisposeStreamProviderRef<CollectionDocument> {
  /// The parameter `collectionId` of this provider.
  String get collectionId;
}

class _DocumentsProviderElement
    extends AutoDisposeStreamProviderElement<CollectionDocument>
    with DocumentsRef {
  _DocumentsProviderElement(super.provider);

  @override
  String get collectionId => (origin as DocumentsProvider).collectionId;
}

String _$nodeServiceHash() => r'af324a74e1773c096aab386bfb45d2ba0b48e544';

/// See also [nodeService].
@ProviderFor(nodeService)
final nodeServiceProvider = AutoDisposeProvider<NodeServiceClient>.internal(
  nodeService,
  name: r'nodeServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nodeServiceHash,
  dependencies: <ProviderOrFamily>[nodePortProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    nodePortProvider,
    ...?nodePortProvider.allTransitiveDependencies
  },
);

typedef NodeServiceRef = AutoDisposeProviderRef<NodeServiceClient>;
String _$signalingHash() => r'cf41fcd765099565fbe8102580c1b93c33e4f2a0';

/// See also [signaling].
@ProviderFor(signaling)
final signalingProvider = AutoDisposeProvider<SignalingServiceClient>.internal(
  signaling,
  name: r'signalingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signalingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignalingRef = AutoDisposeProviderRef<SignalingServiceClient>;
String _$nodePortFutureHash() => r'1b2102a602e175ec7b24f2f6f80ef31ba2ff2f98';

/// See also [nodePortFuture].
@ProviderFor(nodePortFuture)
final nodePortFutureProvider = AutoDisposeFutureProvider<int>.internal(
  nodePortFuture,
  name: r'nodePortFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$nodePortFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NodePortFutureRef = AutoDisposeFutureProviderRef<int>;
String _$nodePortHash() => r'd2e6870eeb001eb289b5ca0c178ded90c4454a8d';

/// See also [nodePort].
@ProviderFor(nodePort)
final nodePortProvider = AutoDisposeProvider<int>.internal(
  nodePort,
  name: r'nodePortProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nodePortHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef NodePortRef = AutoDisposeProviderRef<int>;
String _$scaffoldMessengerKeyHash() =>
    r'2cf5410f88e98845a0209bd94b6beb931a74983d';

/// See also [scaffoldMessengerKey].
@ProviderFor(scaffoldMessengerKey)
final scaffoldMessengerKeyProvider =
    AutoDisposeProvider<GlobalKey<ScaffoldMessengerState>>.internal(
  scaffoldMessengerKey,
  name: r'scaffoldMessengerKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$scaffoldMessengerKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ScaffoldMessengerKeyRef
    = AutoDisposeProviderRef<GlobalKey<ScaffoldMessengerState>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
