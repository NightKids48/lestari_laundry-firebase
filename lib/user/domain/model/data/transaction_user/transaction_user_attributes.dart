import '../../request/user_transaction/transaction_user_delivery.dart';
import '../../request/user_transaction/transaction_user_orders.dart';
import 'transaction_user_payment_info.dart';

class TransactionUserAttributes {
  String createdAt;
  String updateAt;
  String transactionStatus;
  String publishedAt;
  String specialNotes;
  List<TransactionUserOrders> orders;
  TransactionUserDelivery delivery;
  TransactionUserPaymentInfo paymentInfo;
  TransactionUserAttributes(
    this.createdAt,
    this.updateAt,
    this.transactionStatus,
    this.publishedAt,
    this.specialNotes,
    this.orders,
    this.delivery,
    this.paymentInfo,
  );
}
