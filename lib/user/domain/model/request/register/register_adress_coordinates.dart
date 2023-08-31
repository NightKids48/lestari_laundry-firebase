// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'register_adress_coordinates.g.dart';

@JsonSerializable()
class RegisterAdressCoordinates {
  String longitude;
  String latitude;
  RegisterAdressCoordinates(
    this.longitude,
    this.latitude,
  );

  factory RegisterAdressCoordinates.fromJson(Map<String, dynamic> json) =>
      _$RegisterAdressCoordinatesFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterAdressCoordinatesToJson(this);
  }
}
