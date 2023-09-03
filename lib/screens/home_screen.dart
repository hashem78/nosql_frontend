import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodePort = ref.watch(nodePortProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Connected to node on port $nodePort'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Create collection'),
          onPressed: () async {
            final nodeService = ref.watch(nodeServiceProvider(nodePort));
            final collectionMetaData = await nodeService.createCollection(
              CreateCollectionRequest(name: "JafaCollection"),
            );
            print(collectionMetaData);
          },
        ),
      ),
    );
  }
}
