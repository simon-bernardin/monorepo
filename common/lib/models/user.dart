import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class User {
  final String id;
  final String firstName;
  final String lastName;
  final int age;

  User(this.id, this.firstName, this.lastName, this.age);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
