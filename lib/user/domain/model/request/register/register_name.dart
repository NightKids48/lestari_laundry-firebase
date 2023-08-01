// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'register_name.g.dart';

@JsonSerializable()
class RegisterName {
  String firstName;
  String lastName;
  RegisterName(
    this.firstName,
    this.lastName,
  );
  factory RegisterName.fromJson(Map<String, dynamic> json) =>
      _$RegisterNameFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterNameToJson(this);
  }
}
