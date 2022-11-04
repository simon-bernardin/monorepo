import 'package:dart_frog/dart_frog.dart';
import 'package:frog_back/repositories/users.repository.dart';

Response onRequest(RequestContext context, String id) {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: 404);
  }

  final user = context.read<UsersRepository>().getById(id);

  if (user == null) {
    return Response(statusCode: 404);
  }

  return Response.json(body: user);
}
