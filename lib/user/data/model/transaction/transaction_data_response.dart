import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/transaction/transaction_data_attributes_response.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_delivery.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_payment_info.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_data.dart';
import '../../../domain/model/data/transaction/transaction_data.dart';
import '../../../domain/model/data/transaction/transaction_data_attributes.dart';

part 'transaction_data_response.g.dart';

abstract class TransactionDataResponseMapper {
  TransactionData toTransactionData();
}

@JsonSerializable()
class TransactionDataResponse implements TransactionDataResponseMapper {
  int? id;
  TransactionDataAttributesResponse? attributes;
  TransactionDataResponse(
    this.id,
    this.attributes,
  );

  factory TransactionDataResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDataResponseToJson(this);

  @override
  TransactionData toTransactionData() {
    return TransactionData(
      id ?? 0,
      attributes?.toTransactionDataAttributes() ??
          TransactionDataAttributes(
            '',
            '',
            '',
            '',
            '',
            [],
            TransactionDelivery(0, '', ''),
            TransactionPaymentInfo(0, '', ''),
            TransactionUser(
              TransactionUserData(
                0,
                TransactionUserAttributes(
                    '', '', '', '', '', '', '', '', '', ''),
              ),
            ),
          ),
    );
  }
}
