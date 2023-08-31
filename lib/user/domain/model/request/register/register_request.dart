// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/request/register/register_adress.dart';
import 'package:lestari_laundry/user/domain/model/request/register/register_name.dart';
import 'package:lestari_laundry/user/domain/model/request/register/register_request_address.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  String username;
  String phoneNumber;
  String email;
  String password;
  String userRole;
  RegisterRequestAddress address;
  RegisterName name;
  RegisterAdress adress;
  RegisterRequest(
    this.username,
    this.phoneNumber,
    this.email,
    this.password,
    this.userRole,
    this.address,
    this.name,
    this.adress,
  );

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterRequestToJson(this);
  }
}
