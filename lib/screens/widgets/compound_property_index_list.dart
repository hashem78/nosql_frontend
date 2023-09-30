import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/collections/collections.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';

class CompoundPropertyIndexList extends HookConsumerWidget {
  const CompoundPropertyIndexList({
    super.key,
    required this.collectionId,
  });

  final String collectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final propertiesVal = ref.watch(compoundIndexesProvider(collectionId));
    final nodeService = ref.watch(nodeServiceProvider);

    return propertiesVal.when(
      data: (properties) {
        return SliverList.list(
          children: properties
              .map(
                (property) => ListTile(
                  title: Text(property),
                  trailing: IconButton(
                    onPressed: () async {
                      await nodeService.removeCompoundIndex(
                        RemoveCompoundIndexRequest(
                          collectionId: collectionId,
                          properties: property.split("_"),
                        ),
                      );
                      ref.invalidate(compoundIndexesProvider(collectionId));
                    },
                    icon: const Icon(Icons.delete, color: Colors.red),
                  ),
                ),
              )
              .toList(),
        );
      },
      error: (error, stackTrace) =>
          const SliverToBoxAdapter(child: Text('Error')),
      loading: () => const SliverToBoxAdapter(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
