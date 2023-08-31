import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_user_attributes.dart';
part 'get_all_transaction_user_attributes_response.g.dart';

abstract class GetAllTransactionUserAttributesResponseMapper {
  GetAllTransactionUserAttributes toGetAllTransactionUserAttributes();
}

@JsonSerializable()
class GetAllTransactionUserAttributesResponse
    implements GetAllTransactionUserAttributesResponseMapper {
  String? email;
  String? provider;
  String? confirmed;
  String? blocked;
  String? createdAt;
  String? updatedAt;
  String? username;
  String? phoneNumber;
  String? fullname;
  String? userRole;
  GetAllTransactionUserAttributesResponse({
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
  });

  factory GetAllTransactionUserAttributesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllTransactionUserAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllTransactionUserAttributesResponseToJson(this);

  @override
  GetAllTransactionUserAttributes toGetAllTransactionUserAttributes() {
    return GetAllTransactionUserAttributes(
      email ?? '',
      provider ?? '',
      confirmed ?? '',
      blocked ?? '',
      createdAt ?? '',
      updatedAt ?? '',
      username ?? '',
      phoneNumber ?? '',
      fullname ?? '',
      userRole ?? '',
    );
  }
}
