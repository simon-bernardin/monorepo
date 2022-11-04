import 'package:dart_frog/dart_frog.dart';
import 'package:frog_back/repositories/users.repository.dart';

Response onRequest(RequestContext context) {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: 404);
  }

  final users = context.read<UsersRepository>().getAll();

  return Response.json(body: users);
}
