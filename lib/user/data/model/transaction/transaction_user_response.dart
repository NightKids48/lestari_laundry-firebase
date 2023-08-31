import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/transaction/transaction_user_data_response.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_data.dart';
part 'transaction_user_response.g.dart';

abstract class TransactionUserResponseMapper {
  TransactionUser toTransactionUser();
}

@JsonSerializable()
class TransactionUserResponse implements TransactionUserResponseMapper {
  TransactionUserDataResponse? data;
  TransactionUserResponse(
    this.data,
  );

  factory TransactionUserResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionUserResponseToJson(this);

  @override
  TransactionUser toTransactionUser() {
    return TransactionUser(
      data?.toTransactionUserData() ??
          TransactionUserData(
            0,
            TransactionUserAttributes(
              '',
              '',
              '',
              '',
              '',
              '',
              '',
              '',
              '',
              '',
            ),
          ),
    );
  }
}
