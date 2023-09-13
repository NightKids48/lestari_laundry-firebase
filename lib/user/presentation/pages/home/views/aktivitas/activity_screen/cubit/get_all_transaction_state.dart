// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'get_all_transaction_cubit.dart';

abstract class GetAllTransactionState extends Equatable {
  const GetAllTransactionState();

  @override
  List<Object> get props => [];
}

class GetAllTransactionInitial extends GetAllTransactionState {}

class GetAllTransactionIsLoading extends GetAllTransactionState {}

// ignore: must_be_immutable
class GetAllTransactionIsSuccess extends GetAllTransactionState {
  List<GetAllTransactionData>? data;
  GetAllTransactionIsSuccess({
    this.data,
  });
}

class GetAllTransactionIsFailed extends GetAllTransactionState {
  final String? message;
  GetAllTransactionIsFailed({
    this.message,
  });
}
