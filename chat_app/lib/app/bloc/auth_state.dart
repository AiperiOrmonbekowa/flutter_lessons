part of 'auth_bloc.dart';
sealed class AuthState {}

final class AuthenticetedState extends AuthState {
    AuthenticetedState(this.user);
  final User user;


}

final class UnauthenticetedState extends AuthState {}