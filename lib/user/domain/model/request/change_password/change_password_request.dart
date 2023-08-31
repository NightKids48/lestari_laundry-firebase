// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  String currentPassword;
  String password;
  String passwordConfirmation;

  ChangePasswordRequest(
    this.currentPassword,
    this.password,
    this.passwordConfirmation,
  );

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ChangePasswordRequestToJson(this);
  }
}
