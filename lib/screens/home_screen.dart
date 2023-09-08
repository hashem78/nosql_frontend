import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';

import 'package:nosql_frontend/providers/shared/shared.dart';
import 'package:nosql_frontend/screens/create_collection_screen.dart';
import 'package:nosql_frontend/screens/dialogs/edit_field_dialog.dart';
import 'package:nosql_frontend/screens/documents_screen.dart';

class CollectionsScreen extends HookConsumerWidget {
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodePort = ref.watch(nodePortProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Connected to node on port $nodePort'),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(collectionsProvider);
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProviderScope(
                overrides: [
                  nodePortProvider.overrideWithValue(nodePort),
                ],
                child: const CreateCollectionScreen(),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ref.watch(collectionsProvider).when(
            data: (data) {
              final collectionsMetaData = data.collectionsMetaData;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final metaData = collectionsMetaData[index];
                  print(metaData);
                  return ListTile(
                    title: Text(metaData.name),
                    trailing: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: const Text('Edit'),
                          onTap: () async {
                            print("editing: ${metaData.id}");
                            final scaffoldMessenger = ref.read(
                              scaffoldMessengerKeyProvider,
                            );

                            final newCollectionName = await showDialog<String?>(
                              context: context,
                              builder: (context) => EditFieldDialog(
                                dialogTitle: 'Edit Collection Name',
                                initialText: metaData.name,
                              ),
                            );

                            if (newCollectionName == null ||
                                newCollectionName.isEmpty) return;

                            final nodeService = ref.read(nodeServiceProvider);

                            try {
                              await nodeService.editCollection(
                                EditCollectionRequest(
                                  collectionId: metaData.id,
                                  collectionName: newCollectionName,
                                ),
                              );
                              scaffoldMessenger.currentState?.showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Sccuessfully Edited Collection'),
                                ),
                              );
                              ref.invalidate(collectionsProvider);
                            } on GrpcError catch (e) {
                              scaffoldMessenger.currentState?.showSnackBar(
                                SnackBar(
                                  content: Text(
                                      e.message ?? 'Error Editing Collection'),
                                ),
                              );
                            }
                          },
                        ),
                        const PopupMenuItem(child: Text('Delete')),
                      ],
                    ),
                    subtitle: Text(
                      metaData.createdOn.toDateTime().toIso8601String(),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProviderScope(
                            overrides: [
                              nodePortProvider.overrideWithValue(nodePort)
                            ],
                            child: DocumentsScreen(
                              metaData: metaData,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                itemCount: collectionsMetaData.length,
              );
            },
            error: (_, __) {
              return Center(
                child: Column(
                  children: [
                    const Text('Error'),
                    ElevatedButton(
                      onPressed: () {
                        ref.invalidate(collectionsProvider);
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
