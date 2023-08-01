import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_user_data.dart';

class TransactionUser {
  TransactionUserData data;
  TransactionUserAttributes attributes;
  TransactionUser(
    this.data,
    this.attributes,
  );
}
