// ignore_for_file: must_be_immutable
part of 'satuan_cubit.dart';

abstract class SatuanState extends Equatable {
  const SatuanState();

  @override
  List<Object> get props => [];
}

class SatuanInitial extends SatuanState {}

class SatuanIsLoading extends SatuanState {}

class SatuanIsSuccess extends SatuanState {
  List<SatuanData>? data;
  SatuanIsSuccess({
    this.data,
  });
}

class SatuanIsFailed extends SatuanState {
  final String? message;
  SatuanIsFailed({
    this.message,
  });
}
