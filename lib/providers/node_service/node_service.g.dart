// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nodeServiceHash() => r'3e8a5ee25b04025c20344a4f4f87e3f7bb9744d7';

/// See also [nodeService].
@ProviderFor(nodeService)
final nodeServiceProvider = AutoDisposeProvider<NodeServiceClient>.internal(
  nodeService,
  name: r'nodeServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nodeServiceHash,
  dependencies: <ProviderOrFamily>[nodePortProvider, jwtTokenProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    nodePortProvider,
    ...?nodePortProvider.allTransitiveDependencies,
    jwtTokenProvider,
    ...?jwtTokenProvider.allTransitiveDependencies
  },
);

typedef NodeServiceRef = AutoDisposeProviderRef<NodeServiceClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
