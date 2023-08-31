// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'register_request_address.g.dart';

@JsonSerializable()
class RegisterRequestAddress {
  String longitude;
  String latitude;
  RegisterRequestAddress(
    this.longitude,
    this.latitude,
  );

  factory RegisterRequestAddress.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestAddressFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterRequestAddressToJson(this);
  }
}
