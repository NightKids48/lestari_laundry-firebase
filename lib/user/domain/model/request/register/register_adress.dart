import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/request/register/register_adress_coordinates.dart';

part 'register_adress.g.dart';

@JsonSerializable()
class RegisterAdress {
  String rt;
  String rw;
  String city;
  String province;
  String zipcode;
  String adressDetail;
  RegisterAdressCoordinates coordinates;
  RegisterAdress(
    this.rt,
    this.rw,
    this.city,
    this.province,
    this.zipcode,
    this.adressDetail,
    this.coordinates,
  );

  factory RegisterAdress.fromJson(Map<String, dynamic> json) =>
      _$RegisterAdressFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterAdressToJson(this);
  }
}
