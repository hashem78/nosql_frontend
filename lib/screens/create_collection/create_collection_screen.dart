import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:nosql_frontend/screens/dialogs/edit_field_dialog.dart';

import 'edit_schema_screen.dart';

typedef DBCollection = (String, Map<String, dynamic>);

class CreateCollectionScreen extends HookConsumerWidget {
  const CreateCollectionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionNameNotifier = useValueNotifier("ANewCollection");
    final jsonSchemaNotifier = useValueNotifier<Map<String, dynamic>?>(null);

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Collection')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FloatingActionButton.extended(
            onPressed: () async {
              Navigator.pop(context,);
            },
            label: const Row(
              children: [
                Icon(Icons.save),
                SizedBox(width: 12),
                Text('Create Collection'),
              ],
            ),
          ),
          const SizedBox(height: 10),

          FloatingActionButton.extended(
            onPressed: () async {
              final schema = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditSchemaScreen(
                    initialText: jsonSchemaNotifier.value == null
                        ? null
                        : JsonEncoder.withIndent(' ' * 4)
                            .convert(jsonSchemaNotifier.value),
                  ),
                ),
              );
              if (schema != null) jsonSchemaNotifier.value = schema;
            },
            label: const Row(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 12),
                Text('Edit Schema'),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
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
              collectionNameNotifier.value = collectionName!;
            },
          ),
          if (useValueListenable(jsonSchemaNotifier) != null)
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SelectableText(
                JsonEncoder.withIndent(' ' * 4).convert(
                  useValueListenable(jsonSchemaNotifier),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
