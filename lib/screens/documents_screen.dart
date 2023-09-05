import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

class DocumentsScreen extends HookConsumerWidget {
  const DocumentsScreen({
    super.key,
    required this.metaData,
  });

  final CollectionMetaData metaData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = useValueNotifier(
      (
        documents: <CollectionDocument>[],
        isLoading: true,
      ),
    );

    ref.listen(
      documentsProvider(metaData.name),
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
        title: Text('Viewing ${metaData.name}'),
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
