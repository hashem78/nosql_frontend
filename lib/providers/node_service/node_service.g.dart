// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nodeServiceHash() => r'ee731659ad3f8aea009d436aad7eca5e24ff1190';

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
