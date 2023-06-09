// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  String phoneNumber;
  String email;
  String password;
  String firstName;
  String lastName;
  String city;
  String adressDetail;

  RegisterRequest(
    this.phoneNumber,
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.city,
    this.adressDetail,
  );

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterRequestToJson(this);
  }
}
