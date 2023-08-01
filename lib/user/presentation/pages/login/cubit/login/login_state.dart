part of 'login_cubit.dart';

abstract class LoginStates extends Equatable {
  const LoginStates();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginStates {}

class LoginIsLoading extends LoginStates {}

class LoginIsSucces extends LoginStates {
  final LoginData data;
  LoginIsSucces({
    required this.data,
  });
}

class LoginIsError extends LoginStates {
  String? message;
  LoginIsError({this.message});
}
