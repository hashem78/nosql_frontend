import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/constants.dart';
import 'package:nosql_frontend/proto_gen/common.pb.dart';
import 'package:nosql_frontend/providers/documents/documents.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:nosql_frontend/screens/edit_document_screen.dart';

class QueryResponsesStaticListWidget extends ConsumerWidget {
  const QueryResponsesStaticListWidget({
    super.key,
    required this.responses,
    required this.collectionId,
  });

  final List<dynamic> responses;
  final String collectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        final response = responses[index];
        if (response is! String) return ListTile(title: Text(response));
        return Consumer(
          builder: (context, ref, child) {
            final documentId = response;
            final nodePort = ref.watch(nodePortProvider);
            final docProvider = documentProvider(
              collectionId: collectionId,
              documentId: documentId,
            );
            final documentVal = ref.watch(docProvider);

            return documentVal.when(
              data: (document) {
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
                                await Navigator.of(context)
                                    .push<CollectionDocument>(
                                  MaterialPageRoute(
                                    builder: (context) => ProviderScope(
                                      overrides: [
                                        nodePortProvider
                                            .overrideWithValue(nodePort),
                                      ],
                                      child: EditDocumentScreen(
                                        initialText: jsonEncode(map['data']),
                                        collectionId: collectionId,
                                        documentId: documentId,
                                      ),
                                    ),
                                  ),
                                );
                                ref.invalidate(docProvider);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              error: (error, stackTrace) => Container(),
              loading: () => Container(),
            );
          },
        );
      },
      itemCount: responses.length,
      separatorBuilder: (_, __) => const Divider(color: Colors.black),
    );
  }
}
