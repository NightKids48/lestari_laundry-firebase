// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/user/domain/model/data/profile/name_data.dart';

import 'address_data.dart';

class ProfileData {
  int id;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  String createdAt;
  String updatedAt;
  String username;
  String phoneNumber;
  String fullname;
  String userRole;
  String avatar;
  NameData name;
  AddressData address;
  ProfileData(
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
  );
}
