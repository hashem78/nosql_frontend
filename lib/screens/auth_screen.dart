import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nosql_frontend/proto_gen/auth.pbgrpc.dart';
import 'package:nosql_frontend/providers/auth/auth.dart';
import 'package:nosql_frontend/providers/node_port/node_port.dart';
import 'package:nosql_frontend/screens/home_screen.dart';

class AuthScreen extends HookConsumerWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    final nodePort = ref.watch(nodePortProvider);
    final isMounted = useIsMounted();
    final isLoading = useValueNotifier(true);

    ref.listen(
      localJwtTokenProvider,
      (previous, next) {
        next.when(
          data: (token) {
            if (token != null) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProviderScope(
                    overrides: [
                      nodePortProvider.overrideWithValue(nodePort),
                      jwtTokenProvider.overrideWithValue(token)
                    ],
                    child: const CollectionsScreen(),
                  ),
                ),
              );
            } else {
              isLoading.value = false;
            }
          },
          error: (error, stackTrace) {
            isLoading.value = false;
          },
          loading: () {
            isLoading.value = true;
          },
        );
      },
    );

    return switch (useValueListenable(isLoading)) {
      true => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      false => FlutterLogin(
          onLogin: (loginData) async {
            try {
              const storage = FlutterSecureStorage();
              final token = await authService.authenticateUser(
                UserAuthenticationRequest(
                  email: loginData.name,
                  password: loginData.password,
                ),
              );

              await storage.write(key: "jwt_token", value: token.token);

              if (!isMounted()) return "Failure";
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProviderScope(
                    overrides: [
                      nodePortProvider.overrideWithValue(nodePort),
                      jwtTokenProvider.overrideWithValue(token.token)
                    ],
                    child: const CollectionsScreen(),
                  ),
                ),
              );
              return null;
            } on GrpcError catch (e) {
              return e.message ?? 'Invalid Credentials';
            }
          },
          onSignup: (signupData) async {
            try {
              const storage = FlutterSecureStorage();
              await authService.registerUser(
                UserRegistrationRequest(
                  email: signupData.name,
                  password: signupData.password,
                ),
              );
              final token = await authService.authenticateUser(
                UserAuthenticationRequest(
                  email: signupData.name,
                  password: signupData.password,
                ),
              );
              await storage.write(key: "jwt_token", value: token.token);
              if (!isMounted()) return "Failure";
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProviderScope(
                    overrides: [
                      nodePortProvider.overrideWithValue(nodePort),
                      jwtTokenProvider.overrideWithValue(token.token)
                    ],
                    child: const CollectionsScreen(),
                  ),
                ),
              );
              return null;
            } on GrpcError catch (e) {
              return e.message ?? 'Invalid Credentials';
            }
          },
          onRecoverPassword: (_) => null,
        ),
    };
  }
}
