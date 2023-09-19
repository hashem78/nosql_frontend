// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signaling.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signalingHash() => r'23122d44d62a49e661447bb1e4b11e6a936a765f';

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
String _$availableNodesHash() => r'7d4ff1c999ba5dd1c2802957f55c711267773b71';

/// See also [availableNodes].
@ProviderFor(availableNodes)
final availableNodesProvider = AutoDisposeFutureProvider<List<int>>.internal(
  availableNodes,
  name: r'availableNodesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$availableNodesHash,
  dependencies: <ProviderOrFamily>[signalingProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    signalingProvider,
    ...?signalingProvider.allTransitiveDependencies
  },
);

typedef AvailableNodesRef = AutoDisposeFutureProviderRef<List<int>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
