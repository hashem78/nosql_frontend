import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/node.pb.dart';
import 'package:nosql_frontend/providers/collections/collections.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';
import 'package:nosql_frontend/screens/widgets/create_compound_index_property_list.dart';

class CreateCompoundIndexScreen extends HookConsumerWidget {
  const CreateCompoundIndexScreen({
    super.key,
    required this.collectionId,
  });

  final String collectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metaDataVal = ref.watch(collectionMetaDataProvider(collectionId));
    final propertiesNotifier = useValueNotifier(<String>{});
    final isMounted = useIsMounted();

    return metaDataVal.when(
      data: (metaData) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${metaData.name} Indexes'),
          ),
          body: CustomScrollView(
            slivers: [
              CreateCompoundIndexPropertyList(
                metaData: metaData,
                onChanged: (properties) {
                  propertiesNotifier.value = properties;
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.save),
            onPressed: () async {
              final scaffoldKey = ref.read(scaffoldMessengerKeyProvider);
              if (propertiesNotifier.value.length < 2) {
                scaffoldKey.currentState?.showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Compound Indexes can only be created on two or more properties',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                );
              } else {
                final nodeService = ref.read(nodeServiceProvider);
                await nodeService.compoundIndex(
                  CompoundIndexRequest(
                    collectionId: collectionId,
                    properties: propertiesNotifier.value,
                  ),
                );
                
                if (!isMounted()) return;
                // ignore: use_build_context_synchronously
                Navigator.of(context).pop();
              }
            },
          ),
        );
      },
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(title: const Text('Indexes')),
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
          title: const Text('Indexes'),
        ),
        body: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
