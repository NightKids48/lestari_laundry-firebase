// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'order_cubit.dart';

abstract class OrderState extends Equatable {
  const OrderState();

  @override
  List<Object> get props => [];
}

class OrderInitial extends OrderState {}

class OrderIsLoading extends OrderState {}

class OrderIsSuccess extends OrderState {
  final List<TransactionData> data;
  OrderIsSuccess({
    required this.data,
  });
}

class OrderIsFailed extends OrderState {
  final String message;
  OrderIsFailed({
    required this.message,
  });
}
