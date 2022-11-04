import 'package:dart_frog/dart_frog.dart';
import 'package:frog_back/services/auth.service.dart';

Handler authMiddleware(Handler handler) {
  return (context) async {
    if (!authService.isAuthorized(context.request)) {
      return Response(statusCode: 401);
    }

    // Forward the request to the respective handler.
    final response = await handler(context);

    // Execute code after request is handled.

    // Return a response.
    return response;
  };
}
