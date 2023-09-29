import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/common.pb.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';

class CompoundPropertyIndexList extends HookConsumerWidget {
  const CompoundPropertyIndexList({
    super.key,
    required this.metaData,
  });

  final CollectionMetaData metaData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = useValueNotifier(
      metaData.indexedCompoundProperties.toSet(),
    );
    final enabledNotifier = useValueNotifier(
      metaData.indexedCompoundProperties.toSet(),
    );
    return SliverList.list(
      children: metaData.indexedCompoundProperties
          .map(
            (property) => CheckboxListTile(
              title: Text(property),
              value: useValueListenable(stateNotifier).contains(
                property,
              ),
              enabled: useValueListenable(enabledNotifier).contains(
                property,
              ),
              onChanged: (val) async {
                if (val == null) return;
                final nodeService = ref.read(nodeServiceProvider);
                final enabledCopy = {...enabledNotifier.value};
                enabledCopy.remove(property);
                enabledNotifier.value = enabledCopy;
                if (val) {
                  await nodeService.compoundIndex(
                    CompoundIndexRequest(
                      collectionId: metaData.id,
                      properties: property.split("_"),
                    ),
                  );
                  stateNotifier.value = {...stateNotifier.value, property};
                } else {
                  final stateCopy = {...stateNotifier.value};
                  stateCopy.remove(property);
                  await nodeService.removeCompoundIndex(
                    RemoveCompoundIndexRequest(
                      collectionId: metaData.id,
                      properties: property.split("_"),
                    ),
                  );
                  stateNotifier.value = stateCopy;
                }
                enabledNotifier.value = {...enabledNotifier.value, property};
              },
            ),
          )
          .toList(),
    );
  }
}
