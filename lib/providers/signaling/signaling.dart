import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/proto_gen/signaling.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signaling.g.dart';

@riverpod
SignalingServiceClient signaling(SignalingRef ref) {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 8000,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  return SignalingServiceClient(channel);
}
