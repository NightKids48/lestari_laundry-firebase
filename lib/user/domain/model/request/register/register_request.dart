import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/request/register/register_adress.dart';
import 'package:lestari_laundry/user/domain/model/request/register/register_adress_coordinates.dart';
import 'package:lestari_laundry/user/domain/model/request/register/register_name.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  String username;
  String phoneNumber;
  String email;
  String password;
  RegisterAdressCoordinates coordinates;
  RegisterAdress adress;
  RegisterName name;
  RegisterRequest(
    this.username,
    this.phoneNumber,
    this.email,
    this.password,
    this.coordinates,
    this.adress,
    this.name,
  );

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterRequestToJson(this);
  }
}
