import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_editor_flutter/json_editor_flutter.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

class EditDocumentScreen extends StatefulHookConsumerWidget {
  const EditDocumentScreen({
    super.key,
    required this.initialText,
    required this.collectionId,
    this.documentId,
  });

  final String collectionId;
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
                collectionId: widget.collectionId,
                documentId: widget.documentId,
                document: json.value.isEmpty
                    ? widget.initialText
                    : jsonEncode(json.value),
              ),
            );
            scaffoldMessenger.currentState?.showSnackBar(
              SnackBar(
                content: Text(
                  'Successfully edited/created document ${response.document.metaData.id}',
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
        enableMoreOptions: true,
        themeColor: Colors.transparent,
      ),
    );
  }
}
