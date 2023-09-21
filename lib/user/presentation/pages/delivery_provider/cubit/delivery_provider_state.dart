// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'delivery_provider_cubit.dart';

abstract class DeliveryProviderState extends Equatable {
  const DeliveryProviderState();

  @override
  List<Object> get props => [];
}

class DeliveryProviderInitial extends DeliveryProviderState {}

class DeliveryProviderIsLoading extends DeliveryProviderState {}

class DeliveryProviderIsSuccess extends DeliveryProviderState {
  List<DeliveryData>? data;
  DeliveryProviderIsSuccess({
    this.data,
  });
}

class DeliveryProviderIsFailed extends DeliveryProviderState {
  final String? message;
  DeliveryProviderIsFailed({
    this.message,
  });
}
