import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_data_attributes.dart';

part 'transaction_data_attributes_response.g.dart';

abstract class TransactionDataAttributesResponseMapper {
  TransactionDataAttributes toTransactionDataAttributes();
}

@JsonSerializable()
class TransactionDataAttributesResponse
    implements TransactionDataAttributesResponseMapper {
  String? transactionStatus;
  String? createdAt;
  String? updateAt;
  String? publishedAt;
  String? specialNotes;
  List? orders;

  TransactionDataAttributesResponse(
    this.transactionStatus,
    this.createdAt,
    this.updateAt,
    this.publishedAt,
    this.specialNotes,
    this.orders,
  );

  factory TransactionDataAttributesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionDataAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TransactionDataAttributesResponseToJson(this);

  @override
  TransactionDataAttributes toTransactionDataAttributes() {
    return TransactionDataAttributes(
      transactionStatus ?? '',
      createdAt ?? '',
      updateAt ?? '',
      publishedAt ?? '',
      specialNotes ?? '',
      orders ?? [],
    );
  }
}
