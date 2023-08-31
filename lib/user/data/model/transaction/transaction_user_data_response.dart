import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/transaction/transaction_user_attributes_response.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_data.dart';
import '../../../domain/model/data/transaction/transaction_user_attributes.dart';

part 'transaction_user_data_response.g.dart';

abstract class TransactionUserDataResponseMapper {
  TransactionUserData toTransactionUserData();
}

@JsonSerializable()
class TransactionUserDataResponse implements TransactionUserDataResponseMapper {
  int? id;
  TransactionUserAttributesResponse? attributes;
  TransactionUserDataResponse(
    this.id,
    this.attributes,
  );

  factory TransactionUserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionUserDataResponseToJson(this);

  @override
  TransactionUserData toTransactionUserData() {
    return TransactionUserData(
      id ?? 0,
      attributes?.toTransactionUserAttributes() ??
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
    );
  }
}
