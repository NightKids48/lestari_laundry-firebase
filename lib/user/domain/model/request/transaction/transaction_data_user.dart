// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'transaction_data_user.g.dart';

@JsonSerializable()
class TransactionDataUser {
  List<int> user;
  TransactionDataUser(
    this.user,
  );
  factory TransactionDataUser.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataUserFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionDataUserToJson(this);
  }
}
