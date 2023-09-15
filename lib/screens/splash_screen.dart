import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:nosql_frontend/providers/shared/shared.dart';
import 'package:nosql_frontend/screens/home_screen.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useValueNotifier(true);

    ref.listen(
      nodePortFutureProvider,
      (previous, next) {
        next.when(
          data: (port) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => ProviderScope(
                  overrides: [
                    nodePortProvider.overrideWithValue(port),
                  ],
                  child: const CollectionsScreen(),
                ),
              ),
            );
          },
          error: (_, __) {
            
            ref.read(scaffoldMessengerKeyProvider).currentState!.showSnackBar(
                  const SnackBar(
                    content: Text('Failed to get hold of a node to connect to'),
                  ),
                );
            isLoading.value = false;
          },
          loading: () {},
        );
      },
    );

    return Scaffold(
      body: Center(
        child: useValueListenable(isLoading)
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Error'),
                  ElevatedButton(
                    onPressed: () {
                      ref.invalidate(nodePortFutureProvider);
                      isLoading.value = true;
                    },
                    child: const Text('Retry'),
                  )
                ],
              ),
      ),
    );
  }
}
