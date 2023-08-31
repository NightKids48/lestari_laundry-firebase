part of 'kilogram_cubit.dart';

abstract class KilogramState extends Equatable {
  const KilogramState();

  @override
  List<Object> get props => [];
}

class KilogramInitial extends KilogramState {}

class KilogramIsLoading extends KilogramState {}

// ignore: must_be_immutable
class KilogramIsSucces extends KilogramState {
  List<KilogramData>? data;
  KilogramIsSucces({
    this.data,
  });
}

class KilogramIsFailed extends KilogramState {
  final String? message;
  KilogramIsFailed({
    this.message,
  });
}
