import 'package:common/models/user.dart';

class UsersRepository {
  final List<User> _users = [
    User('1', 'Fabien', 'Dhermy', 25),
    User('2', 'Guillaume', 'Caze François', 29),
    User('3', 'Majid', 'Serhane', 27),
    User('4', 'Quentin', 'Lebreton', 24),
    User('5', 'Simon', 'Bernardin', 43),
  ];

  List<User> getAll() {
    return _users;
  }

  User? getById(String id) {
    final users = _users.where((element) => element.id == id);
    if (users.isEmpty) return null;
    return users.first;
  }
}