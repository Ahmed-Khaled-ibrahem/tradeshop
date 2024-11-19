part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
}

class SignInClickEvent extends AuthEvent {
  const SignInClickEvent();
  @override
  List<Object?> get props => throw UnimplementedError();
}