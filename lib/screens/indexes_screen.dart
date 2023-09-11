import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';
import 'package:nosql_frontend/screens/widgets/property_index_list.dart';

class IndexesScreen extends ConsumerWidget {
  const IndexesScreen({
    super.key,
    required this.collectionId,
  });

  final String collectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metaDataVal = ref.watch(collectionMetaDataProvider(collectionId));

    return metaDataVal.when(
      data: (metaData) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${metaData.name} Indexes'),
          ),
          body: CustomScrollView(
            slivers: [
              PropertyIndexList(metaData: metaData),
            ],
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
