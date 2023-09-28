import 'package:grpc/grpc.dart';

class JwtAuthInterceptor implements ClientInterceptor {
  final String token;

  JwtAuthInterceptor(this.token);

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    return invoker(
      method,
      request,
      options.mergedWith(
        CallOptions(metadata: {'authorization': 'Bearer $token'}),
      ),
    );
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    ClientStreamingInvoker<Q, R> invoker,
  ) {
    return invoker(
      method,
      requests,
      options.mergedWith(
        CallOptions(metadata: {'authorization': 'Bearer $token'}),
      ),
    );
  }
}
