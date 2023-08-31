import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/login/login_data_user.dart';
part 'login_data_response.g.dart';

abstract class LoginDataresponseMapper {
  LoginDataUser toLoginDataUser();
}

@JsonSerializable()
class LoginDataResponse implements LoginDataresponseMapper {
  int? id;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? createdAt;
  String? updatedAt;
  String? username;
  String? phoneNumber;

  LoginDataResponse({
    this.id,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
    this.username,
    this.phoneNumber,
  });

  factory LoginDataResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataResponseToJson(this);

  @override
  LoginDataUser toLoginDataUser() {
    return LoginDataUser(
      id ?? 0,
      email ?? '',
      provider ?? '',
      confirmed ?? false,
      blocked ?? false,
      createdAt ?? '',
      updatedAt ?? '',
      username ?? '',
      phoneNumber ?? '',
    );
  }
}
