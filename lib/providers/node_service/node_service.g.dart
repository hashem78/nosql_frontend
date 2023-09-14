// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
