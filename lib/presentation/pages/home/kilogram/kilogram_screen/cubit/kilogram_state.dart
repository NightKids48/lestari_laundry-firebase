// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'kilogram_cubit.dart';

abstract class KilogramState extends Equatable {
  const KilogramState();

  @override
  List<Object> get props => [];
}

class KilogramInitial extends KilogramState {}

class KilogramIsLoading extends KilogramState {}

class KilogramIsSuccess extends KilogramState {
  List<KilogramData>? data;
  KilogramIsSuccess({
    this.data,
  });
}

class KilogramIsFailed extends KilogramState {
  final String? message;
  KilogramIsFailed({
    this.message,
  });
}
