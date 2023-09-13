import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';
import 'package:nosql_frontend/screens/widgets/query_responses_static_list_widget.dart';

class QueryResponsesDyanmicListWidget extends HookConsumerWidget {
  const QueryResponsesDyanmicListWidget(
      {super.key,
      required this.collectionId,
      required this.property,
      required this.operator,
      required this.value,
      required this.onQueryCompelete});

  final String collectionId;
  final String property;
  final Operator operator;
  final String value;

  final void Function(List<dynamic>) onQueryCompelete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = useValueNotifier<List<dynamic>>([]);
    final streamProvider = queryStreamProvider(
      collectionId: collectionId,
      operator: operator,
      property: property,
      value: value,
    );

    ref.listen(
      streamProvider,
      (previous, next) {
        next.whenOrNull(
          data: (value) => state.value = [...state.value, value],
          error: (error, stackTrace) => onQueryCompelete.call(state.value),
        );
      },
    );

    return ValueListenableBuilder(
      valueListenable: state,
      builder: (_, responses, __) => QueryResponsesStaticListWidget(
        responses: responses,
        collectionId: collectionId,
      ),
    );
  }
}
