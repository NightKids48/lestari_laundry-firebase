import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/domain/model/data/profile/address_data.dart';

part 'address_data_response.g.dart';

abstract class AddressDataResponseMapper {
  AddressData toAddressData();
}

@JsonSerializable()
class AddressDataResponse implements AddressDataResponseMapper {
  int? id;
  String? rt;
  String? rw;
  String? city;
  String? province;
  String? zipcode;
  String? adressDetail;
  AddressDataResponse({
    this.id,
    this.rt,
    this.rw,
    this.city,
    this.province,
    this.zipcode,
    this.adressDetail,
  });

  factory AddressDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressDataResponseToJson(this);

  @override
  AddressData toAddressData() {
    return AddressData(
      id ?? 0,
      rt ?? '',
      rw ?? '',
      city ?? '',
      province ?? '',
      zipcode ?? '',
      adressDetail ?? '',
    );
  }
}
