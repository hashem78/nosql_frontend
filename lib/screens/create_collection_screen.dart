import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/providers/state/state.dart';

import 'package:nosql_frontend/screens/dialogs/edit_field_dialog.dart';

class CreateCollectionScreen extends HookConsumerWidget {
  const CreateCollectionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionNameNotifier = useValueNotifier("ANewCollection");

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Collection')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EditPropertiesScreen(),
            ),
          );
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
        ],
      ),
    );
  }
}

enum EditObjectScreenType { array, string, number, integer }

class EditPropertiesScreen extends HookConsumerWidget {
  const EditPropertiesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTileNotifier = useValueNotifier(EditObjectScreenType.string);
    final schema = ref.watch(objectSchemaControllerProvider);
    print(schema.toJson());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Object Property'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: const Text('object'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditPropertiesScreen(),
                  ),
                );
              },
            ),
            ...EditObjectScreenType.values.map(
              (e) => EditObjectScreenTypeTile(
                value: e,
                groupValue: useValueListenable(selectedTileNotifier),
                onTap: (value) {
                  selectedTileNotifier.value = value;
                },
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
              ],
              decoration: const InputDecoration(
                labelText: 'Property Name',
                filled: true,
                border: InputBorder.none,
              ),
              onChanged: (val) {
                final notifier = ref.read(
                  propertyNameControllerProvider.notifier,
                );
                notifier.set(val);
              },
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: switch (useValueListenable(selectedTileNotifier)) {
                EditObjectScreenType.array => Container(),
                EditObjectScreenType.string => const EditStringPropertyWidget(),
                EditObjectScreenType.number => const EditNumberPropertyWidget(),
                EditObjectScreenType.integer =>
                  const EditIntegerPropertyWidget(),
              },
            ),
          ],
        ),
      ),
    );
  }
}

class EditObjectScreenTypeTile extends StatelessWidget {
  const EditObjectScreenTypeTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onTap,
  });

  final EditObjectScreenType value;
  final EditObjectScreenType groupValue;
  final void Function(EditObjectScreenType value) onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(value.name),
      tileColor: groupValue == value ? Colors.grey : null,
      onTap: () => onTap.call(value),
    );
  }
}

class EditStringPropertyWidget extends HookConsumerWidget {
  const EditStringPropertyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schema = ref.watch(stringSchemaControllerProvider);
    final name = ref.watch(propertyNameControllerProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Min Length',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(stringSchemaControllerProvider.notifier);
            notifier.set(minLength: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Max Length',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(stringSchemaControllerProvider.notifier);
            notifier.set(maxLength: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Format',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(stringSchemaControllerProvider.notifier);
            notifier.set(format: value.isEmpty ? null : value);
          },
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Pattern',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(stringSchemaControllerProvider.notifier);
            notifier.set(pattern: value.isEmpty ? null : value);
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            final notifier = ref.read(objectSchemaControllerProvider.notifier);
            notifier.addProperty(name, schema);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class EditIntegerPropertyWidget extends HookConsumerWidget {
  const EditIntegerPropertyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schema = ref.watch(integerSchemaControllerProvider);
    final name = ref.watch(propertyNameControllerProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Multiple Of',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(integerSchemaControllerProvider.notifier);
            notifier.set(multipleOf: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Minimum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(integerSchemaControllerProvider.notifier);
            notifier.set(minimum: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Exlusive Minimum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(integerSchemaControllerProvider.notifier);
            notifier.set(
                exclusiveMinimum: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Maximum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(integerSchemaControllerProvider.notifier);
            notifier.set(
              maximum: value.isEmpty ? null : int.parse(value),
            );
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Exlusive Maximum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(integerSchemaControllerProvider.notifier);
            notifier.set(
                exclusiveMaximum: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            final notifier = ref.read(objectSchemaControllerProvider.notifier);
            notifier.addProperty(name, schema);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class EditNumberPropertyWidget extends HookConsumerWidget {
  const EditNumberPropertyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schema = ref.watch(numberSchemaControllerProvider);
    final name = ref.watch(propertyNameControllerProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Multiple Of',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(numberSchemaControllerProvider.notifier);
            notifier.set(multipleOf: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Minimum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(numberSchemaControllerProvider.notifier);
            notifier.set(minimum: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Exlusive Minimum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(numberSchemaControllerProvider.notifier);
            notifier.set(
                exclusiveMinimum: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Maximum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(numberSchemaControllerProvider.notifier);
            notifier.set(
              maximum: value.isEmpty ? null : int.parse(value),
            );
          },
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            labelText: 'Exlusive Maximum',
            filled: true,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final notifier = ref.read(numberSchemaControllerProvider.notifier);
            notifier.set(
                exclusiveMaximum: value.isEmpty ? null : int.parse(value));
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            final notifier = ref.read(objectSchemaControllerProvider.notifier);
            notifier.addProperty(name, schema);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
