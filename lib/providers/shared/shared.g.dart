// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientHelloHash() => r'779a27525bce321e43fefd76364b3fd0d0ff867b';

/// See also [clientHello].
@ProviderFor(clientHello)
final clientHelloProvider =
    AutoDisposeStreamProvider<ClientHelloResponse>.internal(
  clientHello,
  name: r'clientHelloProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHelloHash,
  dependencies: <ProviderOrFamily>[nodePortProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    nodePortProvider,
    ...?nodePortProvider.allTransitiveDependencies
  },
);

typedef ClientHelloRef = AutoDisposeStreamProviderRef<ClientHelloResponse>;
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
