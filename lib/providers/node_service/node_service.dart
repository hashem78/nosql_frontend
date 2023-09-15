import 'dart:convert';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/constants.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'node_service.g.dart';

@Riverpod(dependencies: [nodePort])
NodeServiceClient nodeService(NodeServiceRef ref) {
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

  return NodeServiceClient(channel);
}
