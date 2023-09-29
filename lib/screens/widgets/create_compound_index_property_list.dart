import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/common.pb.dart';
import 'package:nosql_frontend/providers/collections/collections.dart';

class CreateCompoundIndexPropertyList extends HookConsumerWidget {
  const CreateCompoundIndexPropertyList({
    super.key,
    required this.metaData,
    required this.onChanged,
  });

  final CollectionMetaData metaData;
  final void Function(Set<String> properties) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allPropertiesVal = ref.watch(
      collectionPropertiesProvider(metaData.id),
    );
    return allPropertiesVal.when(
      data: (allProperties) {
        return HookBuilder(
          builder: (context) {
            final stateNotifier = useValueNotifier(
              metaData.indexedProperties.toSet(),
            );

            return SliverList.list(
              children: allProperties
                  .map(
                    (property) => CheckboxListTile(
                      title: Text(property),
                      value: useValueListenable(stateNotifier).contains(
                        property,
                      ),
                      onChanged: (val) async {
                        if (val == null) return;

                        if (val) {
                          stateNotifier.value = {
                            ...stateNotifier.value,
                            property
                          };
                        } else {
                          final stateCopy = {...stateNotifier.value};
                          stateCopy.remove(property);
                          stateNotifier.value = stateCopy;
                        }
                        onChanged(stateNotifier.value);
                      },
                    ),
                  )
                  .toList(),
            );
          },
        );
      },
      error: (_, __) => SliverList.list(children: const []),
      loading: () => const SliverToBoxAdapter(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
