import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/providers/auth/auth.dart';
import 'package:nosql_frontend/providers/collections/collections.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:nosql_frontend/screens/create_compound_index_screen.dart';
import 'package:nosql_frontend/screens/widgets/compound_property_index_list.dart';

class CompoundIndexesScreen extends HookConsumerWidget {
  const CompoundIndexesScreen({
    super.key,
    required this.collectionId,
  });

  final String collectionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodePort = ref.watch(nodePortProvider);
    final token = ref.watch(jwtTokenProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compound Indexes'),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(compoundIndexesProvider(collectionId));
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ProviderScope(
                  overrides: [
                    nodePortProvider.overrideWithValue(
                      nodePort,
                    ),
                    jwtTokenProvider.overrideWithValue(token)
                  ],
                  child: CreateCompoundIndexScreen(
                    collectionId: collectionId,
                  ),
                );
              },
            ),
          );
          ref.invalidate(compoundIndexesProvider(collectionId));
        },
      ),
      body: CustomScrollView(
        slivers: [
          CompoundPropertyIndexList(
            collectionId: collectionId,
          )
        ],
      ),
    );
  }
}
