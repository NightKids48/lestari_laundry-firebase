// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'name_data_cubit.dart';

abstract class NameDataState extends Equatable {
  const NameDataState();

  @override
  List<Object> get props => [];
}

class NameDataInitial extends NameDataState {}

class NameDataIsLoading extends NameDataState {}

class NameDataIsSuccess extends NameDataState {
  final NameData? datas;
  NameDataIsSuccess({
    this.datas,
  });
}

class NameDataIsFailed extends NameDataState {
  final String? message;
  NameDataIsFailed({
    this.message,
  });
}
