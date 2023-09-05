// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:nosql_frontend/screens/dialogs/edit_field_dialog.dart';

enum PropertyType { string, boolean, int, array, object }

class PropertyDetails {
  final String name;
  final PropertyType type;

  PropertyDetails({
    required this.name,
    required this.type,
  });

  PropertyDetails copyWith({
    String? name,
    PropertyType? type,
  }) {
    return PropertyDetails(
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  @override
  bool operator ==(covariant PropertyDetails other) {
    if (identical(this, other)) return true;

    return other.name == name && other.type == type;
  }

  @override
  int get hashCode => name.hashCode ^ type.hashCode;

  @override
  String toString() => 'PropertyDetails(name: $name, propertyType: $type)';
}

class CreateCollectionScreen extends HookConsumerWidget {
  const CreateCollectionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionNameNotifier = useValueNotifier("ANewCollection");
    final propertiesNotifier = useValueNotifier(<String, PropertyDetails>{});
    print(propertiesNotifier.value);

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Collection')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showDialog<PropertyDetails>(
            context: context,
            builder: (context) => const EditCollectionPropertyDialog(),
          );
          print(result);
          if (result == null) return;
          propertiesNotifier.value = {
            ...propertiesNotifier.value,
            result.name: result
          };
        },
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListTile(
              title: Text(useValueListenable(collectionNameNotifier)),
              subtitle: const Text('Tap to edit collection name'),
              onTap: () async {
                final collectionName = await showDialog<String>(
                  context: context,
                  builder: (context) => EditFieldDialog(
                    dialogTitle: 'Enter a Collection Name',
                    initialText: collectionNameNotifier.value,
                  ),
                );
                collectionNameNotifier.value = collectionName!;
              },
            ),
          ),
          ValueListenableBuilder(
            valueListenable: propertiesNotifier,
            builder: (context, fieldMap, child) {
              if (fieldMap.isEmpty) {
                return const SliverFillRemaining(
                  child: Center(child: Text('There are no properties defined')),
                );
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final field = fieldMap.values.toList()[index];
                    return ListTile(
                      title: Text(field.name),
                      subtitle: Text(field.type.name),
                      onTap: () {},
                    );
                  },
                  childCount: fieldMap.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class EditCollectionPropertyDialog extends HookWidget {
  const EditCollectionPropertyDialog({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: "NewProp");
    final typeNotifier = useValueNotifier(PropertyType.int);

    return AlertDialog(
      title: const Text('Edit Property'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Property Name'),
          ),
          ...PropertyType.values.map(
            (e) {
              return RadioListTile<PropertyType>(
                value: e,
                groupValue: useValueListenable(typeNotifier),
                onChanged: (val) {
                  typeNotifier.value = val!;
                },
                title: Text(e.name),
              );
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(
              context,
              PropertyDetails(name: controller.text, type: typeNotifier.value),
            );
          },
          child: const Text('Ok'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}

// final nodeService = ref.watch(nodeServiceProvider);await nodeService.createCollection(CreateCollectionRequest(name: collectionName),);
