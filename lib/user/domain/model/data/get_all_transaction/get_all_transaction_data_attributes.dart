// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_data_orders.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_payment_info.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user.dart';

import 'get_all_transaction_delivery.dart';

class GetAllTransactionDataAttributes {
  String createdAt;
  String updateAt;
  String transactionStatus;
  String publishedAt;
  String specialNotes;
  List<GetAllTransactionDataOrders> orders;
  GetAllTransactionDelivery delivery;
  GetAllTransactionPaymentInfo paymentInfo;
  GetAllTransactionUser user;
  GetAllTransactionDataAttributes(
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
}
