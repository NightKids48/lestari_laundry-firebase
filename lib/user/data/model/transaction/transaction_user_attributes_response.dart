import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_attributes.dart';

part 'transaction_user_attributes_response.g.dart';

abstract class TransactionUserAttributesResponseMapper {
  TransactionUserAttributes toTransactionUserAttributes();
}

@JsonSerializable()
class TransactionUserAttributesResponse
    implements TransactionUserAttributesResponseMapper {
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
  TransactionUserAttributesResponse(
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
  );

  factory TransactionUserAttributesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionUserAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TransactionUserAttributesResponseToJson(this);

  @override
  TransactionUserAttributes toTransactionUserAttributes() {
    return TransactionUserAttributes(
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
