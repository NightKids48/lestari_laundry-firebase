// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_data_orders.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_delivery.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_payment_info.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user.dart';

class TransactionDataAttributes {
  String createdAt;
  String updateAt;
  String transactionStatus;
  String publishedAt;
  String specialNotes;
  List<TransactionDataOrder> orders;
  TransactionDelivery delivery;
  TransactionPaymentInfo paymentInfo;
  TransactionUser user;
  TransactionDataAttributes(
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
