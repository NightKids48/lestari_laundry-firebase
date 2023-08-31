part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionIsLoading extends TransactionState {}

// ignore: must_be_immutable
class TransactionIsSuccess extends TransactionState {
  TransactionData data;
  TransactionIsSuccess({
    required this.data,
  });
}

// ignore: must_be_immutable
class TransactionIsFailed extends TransactionState {
  String? message;
  TransactionIsFailed({
    required this.message,
  });
}
