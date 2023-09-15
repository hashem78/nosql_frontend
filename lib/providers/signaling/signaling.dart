import 'dart:convert';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/constants.dart';
import 'package:nosql_frontend/proto_gen/signaling.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signaling.g.dart';

@riverpod
SignalingServiceClient signaling(SignalingRef ref) {
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

  final channel = ClientChannel(
    'localhost',
    port: 8000,
    options: options,
  );
  return SignalingServiceClient(channel);
}
