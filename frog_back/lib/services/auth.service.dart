import 'package:dart_frog/dart_frog.dart';

class _AuthService {
  bool isAuthorized(Request request) {
    final authorization = request.headers['Authorization'];

    if (authorization == null || authorization != 'Bearer 123456') {
      return false;
    }

    return true;
  }
}

final authService = _AuthService();
