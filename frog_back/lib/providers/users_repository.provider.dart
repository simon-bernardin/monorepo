import 'package:dart_frog/dart_frog.dart';
import 'package:frog_back/repositories/users.repository.dart';

Middleware usersRepositoryProvider() {
  return provider<UsersRepository>((context) => UsersRepository());
}
