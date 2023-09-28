// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$documentHash() => r'7ed410ee32c95e947b7628084f4d66277198c44b';

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

/// See also [document].
@ProviderFor(document)
const documentProvider = DocumentFamily();

/// See also [document].
class DocumentFamily extends Family<AsyncValue<CollectionDocument>> {
  /// See also [document].
  const DocumentFamily();

  /// See also [document].
  DocumentProvider call({
    required String collectionId,
    required String documentId,
  }) {
    return DocumentProvider(
      collectionId: collectionId,
      documentId: documentId,
    );
  }

  @override
  DocumentProvider getProviderOverride(
    covariant DocumentProvider provider,
  ) {
    return call(
      collectionId: provider.collectionId,
      documentId: provider.documentId,
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
  String? get name => r'documentProvider';
}

/// See also [document].
class DocumentProvider extends AutoDisposeFutureProvider<CollectionDocument> {
  /// See also [document].
  DocumentProvider({
    required String collectionId,
    required String documentId,
  }) : this._internal(
          (ref) => document(
            ref as DocumentRef,
            collectionId: collectionId,
            documentId: documentId,
          ),
          from: documentProvider,
          name: r'documentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$documentHash,
          dependencies: DocumentFamily._dependencies,
          allTransitiveDependencies: DocumentFamily._allTransitiveDependencies,
          collectionId: collectionId,
          documentId: documentId,
        );

  DocumentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.collectionId,
    required this.documentId,
  }) : super.internal();

  final String collectionId;
  final String documentId;

  @override
  Override overrideWith(
    FutureOr<CollectionDocument> Function(DocumentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DocumentProvider._internal(
        (ref) => create(ref as DocumentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        collectionId: collectionId,
        documentId: documentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CollectionDocument> createElement() {
    return _DocumentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DocumentProvider &&
        other.collectionId == collectionId &&
        other.documentId == documentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionId.hashCode);
    hash = _SystemHash.combine(hash, documentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DocumentRef on AutoDisposeFutureProviderRef<CollectionDocument> {
  /// The parameter `collectionId` of this provider.
  String get collectionId;

  /// The parameter `documentId` of this provider.
  String get documentId;
}

class _DocumentProviderElement
    extends AutoDisposeFutureProviderElement<CollectionDocument>
    with DocumentRef {
  _DocumentProviderElement(super.provider);

  @override
  String get collectionId => (origin as DocumentProvider).collectionId;
  @override
  String get documentId => (origin as DocumentProvider).documentId;
}

String _$documentsHash() => r'83007370392e3587579b7180d19a0aa9bebf112b';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
