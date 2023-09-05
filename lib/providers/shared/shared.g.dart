// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
String _$documentsHash() => r'7b32bb4fe6e8746fa735ce2b52b0f9a027603a14';

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

/// See also [documents].
@ProviderFor(documents)
const documentsProvider = DocumentsFamily();

/// See also [documents].
class DocumentsFamily extends Family<AsyncValue<CollectionDocument>> {
  /// See also [documents].
  const DocumentsFamily();

  /// See also [documents].
  DocumentsProvider call(
    String collectionName,
  ) {
    return DocumentsProvider(
      collectionName,
    );
  }

  @override
  DocumentsProvider getProviderOverride(
    covariant DocumentsProvider provider,
  ) {
    return call(
      provider.collectionName,
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
    String collectionName,
  ) : this._internal(
          (ref) => documents(
            ref as DocumentsRef,
            collectionName,
          ),
          from: documentsProvider,
          name: r'documentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$documentsHash,
          dependencies: DocumentsFamily._dependencies,
          allTransitiveDependencies: DocumentsFamily._allTransitiveDependencies,
          collectionName: collectionName,
        );

  DocumentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collectionName,
  }) : super.internal();

  final String collectionName;

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
        collectionName: collectionName,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<CollectionDocument> createElement() {
    return _DocumentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DocumentsProvider && other.collectionName == collectionName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DocumentsRef on AutoDisposeStreamProviderRef<CollectionDocument> {
  /// The parameter `collectionName` of this provider.
  String get collectionName;
}

class _DocumentsProviderElement
    extends AutoDisposeStreamProviderElement<CollectionDocument>
    with DocumentsRef {
  _DocumentsProviderElement(super.provider);

  @override
  String get collectionName => (origin as DocumentsProvider).collectionName;
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
