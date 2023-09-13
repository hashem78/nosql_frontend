import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/constants.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

class QueryResponsesStaticListWidget extends StatelessWidget {
  const QueryResponsesStaticListWidget({
    super.key,
    required this.responses,
    required this.collectionId,
  });

  final List<dynamic> responses;
  final String collectionId;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        final response = responses[index];
        if (response is! String) return ListTile(title: Text(response));
        return Consumer(
          builder: (context, ref, child) {
            final documentId = response;

            final documentVal = ref.watch(documentProvider(
              collectionId: collectionId,
              documentId: documentId,
            ));

            return documentVal.when(
              data: (document) {
                final map = document.toProto3Json() as Map<String, dynamic>;
                map['data'] = jsonDecode(map['data']);
                return JsonView.map(
                  map,
                  theme: kJsonViewTheme,
                );
              },
              error: (error, stackTrace) => Container(),
              loading: () => Container(),
            );
          },
        );
      },
      itemCount: responses.length,
    );
  }
}
