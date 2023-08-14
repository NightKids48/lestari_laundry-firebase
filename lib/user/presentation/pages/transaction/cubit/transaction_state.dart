part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionIsLoading extends TransactionState {}

class TransactionIsSuccess extends TransactionState {
  TransactionData data;
  TransactionIsSuccess({
    required this.data,
  });
}

class TransactionIsFailed extends TransactionState {
  String? message;
  TransactionIsFailed({
    required this.message,
  });
}
