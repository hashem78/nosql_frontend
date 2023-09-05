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
        onPressed: () async {
          final collectionName = await showDialog(
            context: context,
            builder: (context) => const EditFieldDialog(
              dialogTitle: 'Enter a Collection Name',
            ),
          );

          final nodeService = ref.watch(nodeServiceProvider(nodePort));
          final collectionMetaData = await nodeService.createCollection(
            CreateCollectionRequest(name: collectionName),
          );
          print(collectionMetaData);
        },
        child: const Icon(Icons.add),
      ),
      body: ref.watch(collectionsProvider(nodePort)).when(
            data: (data) {
              final collectionsMetaData = data.collectionsMetaData;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final metaData = collectionsMetaData[index];
                  return ListTile(
                    title: Text(metaData.name),
                    subtitle: Text(
                      metaData.createdOn.toDateTime().toIso8601String(),
                    ),
                  );
                },
                itemCount: collectionsMetaData.length,
              );
            },
            error: (_, __) => const Center(child: Text('Error')),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}

class EditFieldDialog extends StatefulWidget {
  const EditFieldDialog({
    super.key,
    this.dialogTitle,
    this.initialText = '',
  });

  final String? dialogTitle;
  final String initialText;

  @override
  State<EditFieldDialog> createState() => _EditFieldDialogState();
}

class _EditFieldDialogState extends State<EditFieldDialog> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController.fromValue(
      TextEditingValue(text: widget.initialText),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.dialogTitle ?? 'Edit Field'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
          )
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, controller.text);
          },
          child: const Text('Ok'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
