import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/providers/auth/auth.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:nosql_frontend/providers/signaling/signaling.dart';
import 'package:nosql_frontend/screens/home_screen.dart';

class SwitchNodeDialog extends HookConsumerWidget {
  const SwitchNodeDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableNodesFuture = ref.watch(availableNodesProvider);
    final currentPort = ref.watch(nodePortProvider);
    final jwtToken = ref.watch(jwtTokenProvider);
    final state = useValueNotifier(currentPort);
    return AlertDialog(
      title: const Text('Switch Node'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: availableNodesFuture.when(
          data: (data) => data
              .map(
                (e) => RadioListTile(
                  value: e,
                  title: Text(e.toString()),
                  groupValue: useValueListenable(state),
                  onChanged: (value) {
                    state.value = value ?? currentPort;
                  },
                ),
              )
              .toList(),
          error: (error, stackTrace) => const [Center(child: Text('Error'))],
          loading: () => const [Center(child: CircularProgressIndicator())],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return ProviderScope(
                    overrides: [
                      nodePortProvider.overrideWithValue(state.value),
                      jwtTokenProvider.overrideWithValue(jwtToken)
                    ],
                    child: const CollectionsScreen(),
                  );
                },
              ),
            );
          },
          child: const Text('Ok'),
        ),
        TextButton.icon(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            ref.invalidate(availableNodesProvider);
          },
          label: const Text('Refresh'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        )
      ],
    );
  }
}
