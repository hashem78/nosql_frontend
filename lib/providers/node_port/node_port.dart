import 'package:nosql_frontend/proto_gen/signaling.pb.dart';
import 'package:nosql_frontend/providers/signaling/signaling.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'node_port.g.dart';

@riverpod
Future<int> nodePortFuture(NodePortFutureRef ref) async {
  final signalingClient = ref.watch(signalingProvider);
  final loadResponse = await signalingClient.discoverLoad(
    LoadDiscoveryRequest(),
  );

  return loadResponse.port;
}

@Riverpod(dependencies: [])
int nodePort(NodePortRef ref) {
  throw UnimplementedError("Override the provider first");
}
