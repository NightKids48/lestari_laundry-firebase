import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/change_password/change_password_data_user.dart';
part 'change_password_data_response.g.dart';

abstract class ChangePasswordDataresponseMapper {
  ChangePasswordDataUser toChangePasswordDataUser();
}

@JsonSerializable()
class ChangePasswordDataResponse implements ChangePasswordDataresponseMapper {
  int? id;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? createdAt;
  String? updatedAt;
  String? username;
  String? phoneNumber;

  ChangePasswordDataResponse({
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

  factory ChangePasswordDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordDataResponseToJson(this);

  @override
  ChangePasswordDataUser toChangePasswordDataUser() {
    return ChangePasswordDataUser(
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
