// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_cubit.dart';

abstract class RegisterStates extends Equatable {
  const RegisterStates();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterStates {}

class RegisterLoading extends RegisterStates {}

class RegisterIsSucces extends RegisterStates {
  final RegisterData data;

  RegisterIsSucces({
    required this.data,
  });
}

class RegisterIsError extends RegisterStates {
  String? message;
  RegisterIsError({
    required this.message,
  });
}
