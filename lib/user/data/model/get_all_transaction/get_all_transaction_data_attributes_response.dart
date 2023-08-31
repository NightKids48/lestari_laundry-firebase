import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/get_all_transaction/get_all_transaction_delivery_response.dart';
import 'package:lestari_laundry/user/data/model/get_all_transaction/get_all_transaction_orders_response.dart';
import 'package:lestari_laundry/user/data/model/get_all_transaction/get_all_transaction_payment_info_response.dart';
import 'package:lestari_laundry/user/data/model/get_all_transaction/get_all_transaction_user_response.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user_attributes.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_data_attributes.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_delivery.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_payment_info.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_user.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_user_data.dart';

part 'get_all_transaction_data_attributes_response.g.dart';

abstract class GetAllTransactionDataAttributesResponseMapper {
  GetAllTransactionDataAttributes toGetAllTransactionDataAttributes();
}

@JsonSerializable()
class GetAllTransactionDataAttributesResponse
    implements GetAllTransactionDataAttributesResponseMapper {
  String? createdAt;
  String? updateAt;
  String? transactionStatus;
  String? publishedAt;
  String? specialNotes;
  List<GetAllTransactionOrdersResponse>? orders;
  GetAllTransactionDeliveryResponse? delivery;
  GetAllTransactionPaymentInfoResponse? paymentInfo;
  GetAllTransactionUserResponse? user;
  GetAllTransactionDataAttributesResponse(
    this.createdAt,
    this.updateAt,
    this.transactionStatus,
    this.publishedAt,
    this.specialNotes,
    this.orders,
    this.delivery,
    this.paymentInfo,
    this.user,
  );

  factory GetAllTransactionDataAttributesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllTransactionDataAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllTransactionDataAttributesResponseToJson(this);

  @override
  GetAllTransactionDataAttributes toGetAllTransactionDataAttributes() {
    return GetAllTransactionDataAttributes(
      transactionStatus ?? '',
      createdAt ?? '',
      updateAt ?? '',
      publishedAt ?? '',
      specialNotes ?? '',
      orders?.map((e) => e.toGetAllTransactionDataOrders()).toList() ??
          List.empty(),
      delivery?.toGetAllTransactionDelivery() ??
          GetAllTransactionDelivery(0, '', ''),
      paymentInfo?.toGetAllTransactionPaymentInfo() ??
          GetAllTransactionPaymentInfo(0, '', ''),
      user?.toGetAllTransactionUser() ??
          GetAllTransactionUser(
            GetAllTransactionUserData(
              0,
              GetAllTransactionUserAttributes(
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
          ),
    );
  }
}
