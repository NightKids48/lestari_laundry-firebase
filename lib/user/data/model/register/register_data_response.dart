import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/register/register_data_user.dart';
part 'register_data_response.g.dart';

abstract class RegisterDataresponseMapper {
  RegisterDataUser toRegisterDataUser();
}

@JsonSerializable()
class RegisterDataResponse implements RegisterDataresponseMapper {
  int? id;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? createdAt;
  String? updatedAt;
  String? username;
  String? phoneNumber;

  RegisterDataResponse({
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

  factory RegisterDataResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterDataResponseToJson(this);

  @override
  RegisterDataUser toRegisterDataUser() {
    return RegisterDataUser(
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
