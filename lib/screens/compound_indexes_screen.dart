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
    final metaDataVal = ref.watch(collectionMetaDataProvider(collectionId));
    final nodePort = ref.watch(nodePortProvider);
    final token = ref.watch(jwtTokenProvider);
    return metaDataVal.when(
      data: (metaData) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${metaData.name} Compound Indexes'),
            actions: [
              IconButton(
                onPressed: () {
                  ref.invalidate(collectionMetaDataProvider(collectionId));
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
              ref.invalidate(collectionMetaDataProvider(metaData.id));
            },
          ),
          body: CustomScrollView(
            slivers: [
              CompoundPropertyIndexList(
                metaData: metaData,
              )
            ],
          ),
        );
      },
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(title: const Text('Indexes')),
        body: Center(
          child: Column(
            children: [
              const Text('Error'),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(collectionMetaDataProvider(collectionId));
                },
                child: const Text('Retry'),
              )
            ],
          ),
        ),
      ),
      loading: () => Scaffold(
        appBar: AppBar(
          title: const Text('Indexes'),
        ),
        body: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
