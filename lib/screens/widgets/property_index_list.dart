import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';

class PropertyIndexList extends HookConsumerWidget {
  const PropertyIndexList({
    super.key,
    required this.metaData,
  });

  final CollectionMetaData metaData;

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
            final enabledNotifier = useValueNotifier(allProperties.toSet());
            return SliverList.list(
              children: allProperties
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
                          await nodeService.indexCollectionProperty(
                            IndexCollectionPropertyRequest(
                              collectionId: metaData.id,
                              property: property,
                            ),
                          );
                          stateNotifier.value = {
                            ...stateNotifier.value,
                            property
                          };
                        } else {
                          await nodeService.removeIndexFromCollectionProperty(
                            RemoveIndexFromCollectionPropertyRequest(
                              collectionId: metaData.id,
                              property: property,
                            ),
                          );
                          final stateCopy = {...stateNotifier.value};
                          stateCopy.remove(property);
                          stateNotifier.value = stateCopy;
                        }
                        enabledNotifier.value = {
                          ...enabledNotifier.value,
                          property
                        };
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
