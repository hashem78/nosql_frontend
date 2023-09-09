import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_json_view/flutter_json_view.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_editor_flutter/json_editor_flutter.dart';
import 'package:nosql_frontend/constants.dart';

import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

class DocumentsScreen extends StatefulHookConsumerWidget {
  const DocumentsScreen({
    super.key,
    required this.metaData,
  });

  final CollectionMetaData metaData;

  @override
  ConsumerState<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends ConsumerState<DocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    final stateNotifier = useValueNotifier(
      (
        documents: <CollectionDocument>{},
        isLoading: true,
      ),
    );

    ref.listen(
      documentsProvider(widget.metaData.id),
      (prev, next) {
        next.when(
          data: (value) async {
            stateNotifier.value = (
              documents: {...stateNotifier.value.documents, value},
              isLoading: false,
            );
          },
          error: (error, stackTrace) {},
          loading: () {
            stateNotifier.value = (
              documents: const {},
              isLoading: true,
            );
          },
        );
      },
    );

    final state = useValueListenable(stateNotifier);
    final nodePort = ref.watch(nodePortProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Viewing ${widget.metaData.name}'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          final nodeService = ref.read(nodeServiceProvider);
          final response = await nodeService.getDocumentSample(
            GetDocumentSampleRequest(collectionId: widget.metaData.id),
          );
          if (!mounted) return;

          final document = await Navigator.of(context).push<CollectionDocument>(
            MaterialPageRoute(
              builder: (context) => ProviderScope(
                overrides: [
                  nodePortProvider.overrideWithValue(nodePort),
                ],
                child: EditDocumentScreen(
                  initialText: response.documentSample,
                  collectionMetaData: widget.metaData,
                  documentId: null,
                ),
              ),
            ),
          );

          if (document != null) {
            stateNotifier.value = (
              documents: {...stateNotifier.value.documents, document},
              isLoading: false
            );
          }
        },
      ),
      body: switch (state.isLoading) {
        false => ListView.separated(
            itemBuilder: (context, index) {
              final document = state.documents.toList()[index];
              final map = document.toProto3Json() as Map<String, dynamic>;
              map['data'] = jsonDecode(map['data']);

              return Stack(
                children: [
                  JsonView.map(
                    map,
                    theme: kJsonViewTheme,
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: const Text('Edit'),
                            onTap: () async {
                              final editedDocument = await Navigator.of(context)
                                  .push<CollectionDocument>(
                                MaterialPageRoute(
                                  builder: (context) => ProviderScope(
                                    overrides: [
                                      nodePortProvider.overrideWithValue(
                                        nodePort,
                                      ),
                                    ],
                                    child: EditDocumentScreen(
                                      initialText: document.data,
                                      documentId: document.metaData.id,
                                      collectionMetaData: widget.metaData,
                                    ),
                                  ),
                                ),
                              );
                              if (editedDocument != null) {
                                final documentsCopy = {...state.documents};
                                documentsCopy.remove(document);
                                documentsCopy.add(editedDocument);
                                stateNotifier.value = (
                                  documents: documentsCopy,
                                  isLoading: false
                                );
                              }
                            },
                          ),
                          PopupMenuItem(
                            child: const Text('Delete'),
                            onTap: () async {
                              final nodeService = ref.read(nodeServiceProvider);
                              final scaffoldMessenger = ref.read(
                                scaffoldMessengerKeyProvider,
                              );
                              await nodeService.deleteCollectionDocument(
                                DeleteCollectionDocumentRequest(
                                  collectionId: widget.metaData.id,
                                  documentId: document.metaData.id,
                                ),
                              );
                              scaffoldMessenger.currentState?.showSnackBar(
                                SnackBar(
                                  content:
                                      Text('Deleted ${document.metaData.id}'),
                                ),
                              );
                              final stateCopy = {
                                ...stateNotifier.value.documents
                              };
                              stateCopy.remove(document);
                              stateNotifier.value = (
                                documents: stateCopy,
                                isLoading: false,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: state.documents.length,
            separatorBuilder: (context, index) {
              return const Divider(color: Colors.black);
            },
          ),
        true => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }
}

class EditDocumentScreen extends StatefulHookConsumerWidget {
  const EditDocumentScreen({
    super.key,
    required this.initialText,
    required this.collectionMetaData,
    this.documentId,
  });

  final CollectionMetaData collectionMetaData;
  final String initialText;
  final String? documentId;

  @override
  ConsumerState<EditDocumentScreen> createState() => _EditDocumentScreenState();
}

class _EditDocumentScreenState extends ConsumerState<EditDocumentScreen> {
  @override
  Widget build(BuildContext context) {
    final json = useValueNotifier(<dynamic, dynamic>{});
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Document'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () async {
          final nodeService = ref.read(nodeServiceProvider);
          final scaffoldMessenger = ref.read(scaffoldMessengerKeyProvider);

          try {
            final response = await nodeService.setCollectionDocument(
              SetCollectionDocumentRequest(
                collectionId: widget.collectionMetaData.id,
                documentId: widget.documentId,
                document: json.value.isEmpty
                    ? widget.initialText
                    : jsonEncode(json.value),
              ),
            );
            scaffoldMessenger.currentState?.showSnackBar(
              SnackBar(
                content: Text(
                  'Successfully created document ${response.document.metaData.id}',
                ),
              ),
            );
            if (mounted) {
              Navigator.pop<CollectionDocument>(context, response.document);
            }
          } on GrpcError catch (e) {
            scaffoldMessenger.currentState?.showSnackBar(
              SnackBar(
                content: Text(
                  e.message ?? 'Error!',
                ),
              ),
            );
          }
        },
      ),
      body: JsonEditor(
        json: widget.initialText,
        onChanged: (val) {
          json.value = val;
        },
        editors: const [Editors.tree],
        enableKeyEdit: false,
        enableMoreOptions: false,
        themeColor: Colors.transparent,
      ),
    );
  }
}
