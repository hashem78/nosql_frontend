import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/proto_gen/signaling.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shared.g.dart';

@riverpod
Future<GetCollectionsResponse> collections(CollectionsRef ref, int port) async {
  final nodeService = ref.read(nodeServiceProvider(port));
  return await nodeService.getCollections(GetCollectionsRequest());
}

@riverpod
NodeServiceClient nodeService(NodeServiceRef ref, int port) {
  final channel = ClientChannel(
    '127.0.0.1',
    port: port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  return NodeServiceClient(channel);
}

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

@riverpod
Future<int> nodePortFuture(NodePortFutureRef ref) async {
  final signalingClient = ref.read(signalingProvider);
  final loadResponse = await signalingClient.discoverLoad(
    LoadDiscoveryRequest(),
  );

  return loadResponse.port;
}

@riverpod
int nodePort(NodePortRef ref) {
  throw UnimplementedError("Override the provider first");
}

@riverpod
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey(
  ScaffoldMessengerKeyRef ref,
) {
  return GlobalKey();
}
