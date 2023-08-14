import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/transaction/transaction_data_delivery_response.dart';
import 'package:lestari_laundry/user/data/model/transaction/transaction_data_order_response.dart';
import 'package:lestari_laundry/user/data/model/transaction/transaction_data_payment_info_response.dart';
import 'package:lestari_laundry/user/data/model/transaction/transaction_user_response.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_data_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_delivery.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_payment_info.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_data.dart';

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
  List<TransactionDataOrderResponse>? orders;
  TransactionDataDeliveryResponse? delivery;
  TransactionDataPaymentInfoResponse? paymentInfo;
  TransactionUserResponse? user;
  TransactionDataAttributesResponse(
    this.transactionStatus,
    this.createdAt,
    this.updateAt,
    this.publishedAt,
    this.specialNotes,
    this.orders,
    this.delivery,
    this.paymentInfo,
    this.user,
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
      orders?.map((e) => e.toTransactionDataOrder()).toList() ?? List.empty(),
      delivery?.toTransactionDelivery() ?? TransactionDelivery(0, '', ''),
      paymentInfo?.toTransactionPaymentInfo() ??
          TransactionPaymentInfo(0, '', ''),
      user?.toTransactionUser() ??
          TransactionUser(
            TransactionUserData(
              0,
              TransactionUserAttributes('', '', '', '', '', '', '', '', '', ''),
            ),
          ),
    );
  }
}
