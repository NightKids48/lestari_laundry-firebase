import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_attributes.dart';

class TransactionUserData {
  int id;
  TransactionUserAttributes attributes;
  TransactionUserData(
    this.id,
    this.attributes,
  );
}
