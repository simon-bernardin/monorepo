import 'package:dart_frog/dart_frog.dart';
import 'package:frog_back/middlewares/auth.middleware.dart';
import 'package:frog_back/providers/users_repository.provider.dart';

Handler middleware(Handler handler) {
  return handler.use(usersRepositoryProvider()).use(authMiddleware);
}
