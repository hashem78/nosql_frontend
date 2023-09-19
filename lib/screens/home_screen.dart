import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/collections/collections.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';
import 'package:nosql_frontend/screens/create_collection_screen.dart';
import 'package:nosql_frontend/screens/queries_screen.dart';
import 'package:nosql_frontend/screens/widgets/edit_field_dialog.dart';
import 'package:nosql_frontend/screens/documents_screen.dart';
import 'package:nosql_frontend/screens/indexes_screen.dart';
import 'package:nosql_frontend/screens/widgets/switch_node_dialog.dart';

class CollectionsScreen extends HookConsumerWidget {
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodePort = ref.watch(nodePortProvider);

    ref.listen(
      clientHelloProvider,
      (prev, next) {
        debugPrint(next.toString());
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Connected to node on port $nodePort'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Refresh'),
                onTap: () {
                  ref.invalidate(collectionsProvider);
                },
              ),
              PopupMenuItem(
                child: const Text('Switch Node'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => ProviderScope(
                      overrides: [nodePortProvider.overrideWithValue(nodePort)],
                      child: const SwitchNodeDialog(),
                    ),
                  );
                },
              ),
            ],
          ),
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

                  return ListTile(
                    title: Text(metaData.name),
                    trailing: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: const Text('Edit'),
                          onTap: () async {
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
                        PopupMenuItem(
                          child: const Text('Indexes'),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProviderScope(
                                  overrides: [
                                    nodePortProvider.overrideWithValue(nodePort)
                                  ],
                                  child:
                                      IndexesScreen(collectionId: metaData.id),
                                ),
                              ),
                            );
                          },
                        ),
                        PopupMenuItem(
                          child: const Text('Query'),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProviderScope(
                                  overrides: [
                                    nodePortProvider.overrideWithValue(nodePort)
                                  ],
                                  child: QueriesScreen(
                                    collectionId: metaData.id,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        PopupMenuItem(
                          child: const Text('Delete'),
                          onTap: () async {
                            final nodeService = ref.read(nodeServiceProvider);
                            final scaffoldMessenger = ref.read(
                              scaffoldMessengerKeyProvider,
                            );
                            try {
                              await nodeService.deleteCollection(
                                DeleteCollectionRequest(
                                  collectionId: metaData.id,
                                ),
                              );
                              scaffoldMessenger.currentState?.showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Sccuessfully Deleted Collection'),
                                ),
                              );
                              ref.invalidate(collectionsProvider);
                            } on GrpcError catch (e) {
                              scaffoldMessenger.currentState?.showSnackBar(
                                SnackBar(
                                  content: Text(
                                    e.message ?? 'Error Deleting Collection',
                                  ),
                                ),
                              );
                            }
                          },
                        ),
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
