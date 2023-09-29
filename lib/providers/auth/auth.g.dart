// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localCredentialsHash() => r'b0fca5e372b4eaf175cf1bee950e68d32cfcf093';

/// See also [localCredentials].
@ProviderFor(localCredentials)
final localCredentialsProvider = AutoDisposeProvider<(String, String)>.internal(
  localCredentials,
  name: r'localCredentialsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localCredentialsHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef LocalCredentialsRef = AutoDisposeProviderRef<(String, String)>;
String _$localJwtTokenHash() => r'2cbba0fd73235e814223a5fcc6564682d9c43ab6';

/// See also [localJwtToken].
@ProviderFor(localJwtToken)
final localJwtTokenProvider = AutoDisposeFutureProvider<String?>.internal(
  localJwtToken,
  name: r'localJwtTokenProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localJwtTokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalJwtTokenRef = AutoDisposeFutureProviderRef<String?>;
String _$jwtTokenHash() => r'7d8d33597bbe3cdd34c5eb8b7419c55c6e0891c4';

/// See also [jwtToken].
@ProviderFor(jwtToken)
final jwtTokenProvider = AutoDisposeProvider<String>.internal(
  jwtToken,
  name: r'jwtTokenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$jwtTokenHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef JwtTokenRef = AutoDisposeProviderRef<String>;
String _$authServiceHash() => r'b88f1d31cec07b8a7b5c6eb6c24844fa9b17a6bc';

/// See also [authService].
@ProviderFor(authService)
final authServiceProvider = AutoDisposeProvider<AuthServiceClient>.internal(
  authService,
  name: r'authServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authServiceHash,
  dependencies: <ProviderOrFamily>[nodePortProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    nodePortProvider,
    ...?nodePortProvider.allTransitiveDependencies
  },
);

typedef AuthServiceRef = AutoDisposeProviderRef<AuthServiceClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
