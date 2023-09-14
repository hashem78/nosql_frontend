import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'node_service.g.dart';

@Riverpod(dependencies: [nodePort])
NodeServiceClient nodeService(NodeServiceRef ref) {
  final port = ref.watch(nodePortProvider);
  final channel = ClientChannel(
    '127.0.0.1',
    port: port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  return NodeServiceClient(channel);
}
