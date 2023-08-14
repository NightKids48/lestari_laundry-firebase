// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/profile/address_data.dart';
import '../../../domain/model/data/profile/name_data.dart';
import '../../../domain/model/data/profile/profile_data.dart';
import 'address_data_response.dart';
import 'name_data_response.dart';

part 'profile_data_response.g.dart';

abstract class ProfileDataResponseMapper {
  ProfileData toProfileData();
}

@JsonSerializable()
class ProfileDataResponse implements ProfileDataResponseMapper {
  int? id;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? createdAt;
  String? updatedAt;
  String? username;
  String? phoneNumber;
  String? fullname;
  String? userRole;
  String? avatar;
  NameDataResponse? name;
  AddressDataResponse? address;
  ProfileDataResponse({
    this.id,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
    this.username,
    this.phoneNumber,
    this.fullname,
    this.userRole,
    this.avatar,
    this.name,
    this.address,
  });

  factory ProfileDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataResponseToJson(this);

  @override
  ProfileData toProfileData() {
    return ProfileData(
      id ?? 0,
      email ?? '',
      provider ?? '',
      confirmed ?? false,
      blocked ?? false,
      createdAt ?? '',
      updatedAt ?? '',
      username ?? '',
      phoneNumber ?? '',
      fullname ?? '',
      userRole ?? '',
      avatar ?? '',
      name?.toNameData() ?? NameData(0, '', ''),
      address?.toAddressData() ??
          AddressData(
            0,
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
          ),
    );
  }
}
