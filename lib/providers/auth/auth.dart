import 'dart:convert';
import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/constants.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:nosql_frontend/proto_gen/auth.pbgrpc.dart';

part 'auth.g.dart';

@Riverpod(dependencies: [])
(String, String) localCredentials(LocalCredentialsRef ref) {
  throw UnimplementedError();
}

@riverpod
Future<String?> localJwtToken(LocalJwtTokenRef ref) async {
  const storage = FlutterSecureStorage();
  if (!(await storage.containsKey(key: "jwt_token"))) {
    storage.write(key: "jwt_token", value: null);
    return null;
  }
  return await storage.read(key: "jwt_token");
}

@Riverpod(dependencies: [])
String jwtToken(JwtTokenRef ref) {
  throw UnimplementedError();
}

@Riverpod(dependencies: [nodePort])
AuthServiceClient authService(AuthServiceRef ref) {
  late final ChannelOptions options;

  if (kUseSSL) {
    final certificates = utf8.encode(
      File(kCertificateAuthorityPath).readAsStringSync(),
    );
    options = ChannelOptions(
      credentials: ChannelCredentials.secure(
        certificates: certificates,
        authority: 'localhost',
        onBadCertificate: (certificate, host) => true,
      ),
    );
  } else {
    options = const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    );
  }

  final port = ref.watch(nodePortProvider);
  final channel = ClientChannel(
    'localhost',
    port: port,
    options: options,
  );

  return AuthServiceClient(channel);
}
