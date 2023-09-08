// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_editor_flutter/json_editor_flutter.dart';

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
        documents: <CollectionDocument>[],
        isLoading: true,
      ),
    );

    ref.listen(
      documentsProvider(widget.metaData.id),
      (prev, next) {
        next.when(
          data: (value) async {
            stateNotifier.value = (
              documents: [...stateNotifier.value.documents, value],
              isLoading: false,
            );
          },
          error: (error, stackTrace) {},
          loading: () {
            stateNotifier.value = (
              documents: const [],
              isLoading: true,
            );
          },
        );
      },
    );

    final state = useValueListenable(stateNotifier);

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

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EditDocumentScreen(
                initialText: response.documentSample,
              ),
            ),
          );
        },
      ),
      body: switch (state.isLoading) {
        false => ListView.builder(
            itemBuilder: (context, index) {
              final document = state.documents[index];
              return ListTile(
                title: Text(document.data),
              );
            },
            itemCount: state.documents.length,
          ),
        true => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }
}

class EditDocumentScreen extends HookConsumerWidget {
  const EditDocumentScreen({
    super.key,
    required this.initialText,
  });

  final String initialText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final json = useValueNotifier(<dynamic, dynamic>{});
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Document'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          print(json.value);
        },
      ),
      body: JsonEditor(
        json: initialText,
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
