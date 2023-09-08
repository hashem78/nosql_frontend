import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_quill/flutter_quill.dart' as q;
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

import 'package:nosql_frontend/screens/dialogs/edit_field_dialog.dart';

typedef DBCollection = (String, dynamic);

class CreateCollectionScreen extends StatefulHookConsumerWidget {
  const CreateCollectionScreen({
    super.key,
  });

  @override
  ConsumerState<CreateCollectionScreen> createState() =>
      _CreateCollectionScreenState();
}

class _CreateCollectionScreenState
    extends ConsumerState<CreateCollectionScreen> {
  final q.QuillController _controller = q.QuillController.basic();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final collectionNameNotifier = useValueNotifier("ANewCollection");

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Collection')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final text = _controller.document.toPlainText();
          final scaffoldMessenger = ref.read(scaffoldMessengerKeyProvider);
          final nodeService = ref.read(nodeServiceProvider);
          try {
            jsonDecode(text);
            await nodeService.createCollection(
              CreateCollectionRequest(
                name: collectionNameNotifier.value,
                schema: text,
              ),
            );

            scaffoldMessenger.currentState?.showSnackBar(
              SnackBar(
                content: Text(
                  '${collectionNameNotifier.value} was created successfully',
                ),
              ),
            );
            if (mounted) Navigator.pop(context);
          } on GrpcError catch (e) {
            scaffoldMessenger.currentState?.showSnackBar(
              SnackBar(
                content: Text(
                  e.message ?? 'Invalid Schema',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            );
          } catch (e) {
            scaffoldMessenger.currentState?.showSnackBar(
              const SnackBar(
                content: Text(
                  'Invalid Json',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            );
          }
        },
        label: const Row(
          children: [
            Icon(Icons.save),
            SizedBox(width: 12),
            Text('Create Collection'),
          ],
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(useValueListenable(collectionNameNotifier)),
            subtitle: const Text('Tap to edit collection name'),
            onTap: () async {
              final collectionName = await showDialog<String>(
                context: context,
                builder: (context) => EditFieldDialog(
                  dialogTitle: 'Enter a Collection Name',
                  initialText: collectionNameNotifier.value,
                ),
              );
              if (collectionName != null) {
                collectionNameNotifier.value = collectionName;
              }
            },
          ),
          const ListTile(
            title: Text('Type your json schema in the box below'),
          ),
          Expanded(
            child: Container(
              color: Colors.grey.shade200,
              margin: const EdgeInsets.all(8.0),
              child: q.QuillEditor.basic(
                controller: _controller,
                padding: const EdgeInsets.all(16.0),
                readOnly: false, // true for view only mode
              ),
            ),
          ),
        ],
      ),
    );
  }
}
