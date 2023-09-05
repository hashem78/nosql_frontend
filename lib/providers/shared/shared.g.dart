// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$collectionsHash() => r'039fa04ae95d756c9d71e8c0757f1fd7a2572b1b';

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

/// See also [collections].
@ProviderFor(collections)
const collectionsProvider = CollectionsFamily();

/// See also [collections].
class CollectionsFamily extends Family<AsyncValue<GetCollectionsResponse>> {
  /// See also [collections].
  const CollectionsFamily();

  /// See also [collections].
  CollectionsProvider call(
    int port,
  ) {
    return CollectionsProvider(
      port,
    );
  }

  @override
  CollectionsProvider getProviderOverride(
    covariant CollectionsProvider provider,
  ) {
    return call(
      provider.port,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'collectionsProvider';
}

/// See also [collections].
class CollectionsProvider
    extends AutoDisposeFutureProvider<GetCollectionsResponse> {
  /// See also [collections].
  CollectionsProvider(
    int port,
  ) : this._internal(
          (ref) => collections(
            ref as CollectionsRef,
            port,
          ),
          from: collectionsProvider,
          name: r'collectionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$collectionsHash,
          dependencies: CollectionsFamily._dependencies,
          allTransitiveDependencies:
              CollectionsFamily._allTransitiveDependencies,
          port: port,
        );

  CollectionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.port,
  }) : super.internal();

  final int port;

  @override
  Override overrideWith(
    FutureOr<GetCollectionsResponse> Function(CollectionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CollectionsProvider._internal(
        (ref) => create(ref as CollectionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        port: port,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GetCollectionsResponse> createElement() {
    return _CollectionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CollectionsProvider && other.port == port;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, port.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CollectionsRef on AutoDisposeFutureProviderRef<GetCollectionsResponse> {
  /// The parameter `port` of this provider.
  int get port;
}

class _CollectionsProviderElement
    extends AutoDisposeFutureProviderElement<GetCollectionsResponse>
    with CollectionsRef {
  _CollectionsProviderElement(super.provider);

  @override
  int get port => (origin as CollectionsProvider).port;
}

String _$nodeServiceHash() => r'3fe98db8fcfc34ad3ce38d3b79a169e774a2299c';

/// See also [nodeService].
@ProviderFor(nodeService)
const nodeServiceProvider = NodeServiceFamily();

/// See also [nodeService].
class NodeServiceFamily extends Family<NodeServiceClient> {
  /// See also [nodeService].
  const NodeServiceFamily();

  /// See also [nodeService].
  NodeServiceProvider call(
    int port,
  ) {
    return NodeServiceProvider(
      port,
    );
  }

  @override
  NodeServiceProvider getProviderOverride(
    covariant NodeServiceProvider provider,
  ) {
    return call(
      provider.port,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'nodeServiceProvider';
}

/// See also [nodeService].
class NodeServiceProvider extends AutoDisposeProvider<NodeServiceClient> {
  /// See also [nodeService].
  NodeServiceProvider(
    int port,
  ) : this._internal(
          (ref) => nodeService(
            ref as NodeServiceRef,
            port,
          ),
          from: nodeServiceProvider,
          name: r'nodeServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nodeServiceHash,
          dependencies: NodeServiceFamily._dependencies,
          allTransitiveDependencies:
              NodeServiceFamily._allTransitiveDependencies,
          port: port,
        );

  NodeServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.port,
  }) : super.internal();

  final int port;

  @override
  Override overrideWith(
    NodeServiceClient Function(NodeServiceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NodeServiceProvider._internal(
        (ref) => create(ref as NodeServiceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        port: port,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<NodeServiceClient> createElement() {
    return _NodeServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NodeServiceProvider && other.port == port;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, port.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NodeServiceRef on AutoDisposeProviderRef<NodeServiceClient> {
  /// The parameter `port` of this provider.
  int get port;
}

class _NodeServiceProviderElement
    extends AutoDisposeProviderElement<NodeServiceClient> with NodeServiceRef {
  _NodeServiceProviderElement(super.provider);

  @override
  int get port => (origin as NodeServiceProvider).port;
}

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
String _$nodePortFutureHash() => r'838c4e04116b35a13fb7429371200ee3c90760cd';

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
String _$nodePortHash() => r'c4b3c360c690c578d0156810e5a299a8d345dc45';

/// See also [nodePort].
@ProviderFor(nodePort)
final nodePortProvider = AutoDisposeProvider<int>.internal(
  nodePort,
  name: r'nodePortProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nodePortHash,
  dependencies: null,
  allTransitiveDependencies: null,
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
