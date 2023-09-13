import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';
import 'package:nosql_frontend/screens/widgets/query_responses_dyanmic_list_widget.dart';
import 'package:nosql_frontend/screens/widgets/query_responses_static_list_widget.dart';

enum PropertyType { string, integer }

class QueriesScreen extends HookConsumerWidget {
  const QueriesScreen({
    super.key,
    required this.collectionId,
  });
  final String collectionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metaDataVal = ref.watch(collectionMetaDataProvider(collectionId));
    final queryingStateNotifier = useValueNotifier(false);
    final propertyValueNotifier = useValueNotifier("None");
    final operatorValueNotifier = useValueNotifier(Operator.EQUALS);
    final queryValueController = useTextEditingController();
    final responsesStateNotifier = useValueNotifier([]);

    return metaDataVal.when(
      data: (metaData) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Query ${metaData.name}"),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    DropdownMenu(
                      hintText: 'Property',
                      onSelected: (val) {
                        propertyValueNotifier.value = val ?? 'None';
                      },
                      dropdownMenuEntries: metaData.indexedProperties
                          .map((e) => DropdownMenuEntry(value: e, label: e))
                          .toList(),
                    ),
                    DropdownMenu(
                      hintText: 'Operator',
                      onSelected: (val) {
                        operatorValueNotifier.value = val ?? Operator.EQUALS;
                      },
                      dropdownMenuEntries: Operator.values
                          .map(
                              (e) => DropdownMenuEntry(value: e, label: e.name))
                          .toList(),
                    ),
                    Expanded(
                      child: TextField(
                        controller: queryValueController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Value',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        queryingStateNotifier.value = true;
                      },
                      child: const Text('Run'),
                    )
                  ],
                ),
              ),
              switch (useValueListenable(queryingStateNotifier)) {
                true => QueryResponsesDyanmicListWidget(
                    collectionId: metaData.id,
                    operator: useValueListenable(operatorValueNotifier),
                    property: useValueListenable(propertyValueNotifier),
                    value: queryValueController.text,
                    onQueryCompelete: (responses) {
                      queryingStateNotifier.value = false;
                      responsesStateNotifier.value = responses;
                    },
                  ),
                false => QueryResponsesStaticListWidget(
                    responses: useValueListenable(responsesStateNotifier),
                    collectionId: metaData.id,
                  ),
              }
            ],
          ),
        );
      },
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(title: Text('Query $collectionId')),
        body: Center(
          child: Column(
            children: [
              const Text('Error'),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(collectionMetaDataProvider(collectionId));
                },
                child: const Text('Retry'),
              )
            ],
          ),
        ),
      ),
      loading: () => Scaffold(
        appBar: AppBar(
          title: Text('Query $collectionId'),
        ),
        body: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
