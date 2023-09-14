import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'shared.g.dart';

@Riverpod(dependencies: [nodePort])
Stream<ClientHelloResponse> clientHello(ClientHelloRef ref) {
  final nodeService = ref.watch(nodeServiceProvider);
  final controller =
      BehaviorSubject<ClientHelloRequest>.seeded(ClientHelloRequest());
  ref.onDispose(() {
    controller.close();
  });
  return nodeService.clientHello(controller.stream);
}

@riverpod
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey(
  ScaffoldMessengerKeyRef ref,
) {
  return GlobalKey();
}
