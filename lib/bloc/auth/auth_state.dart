
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}/// Base class for authentication states

class AuthInitial extends AuthState {} /// Initial state when the app starts

class AuthLoading extends AuthState {}/// State when authentication is in progress

class LoginAuthenticated extends AuthState {
  final User user;

  LoginAuthenticated(this.user);
}/// State when the user is authenticated

class RegisterAuthenticated extends AuthState {
  final User user;

  RegisterAuthenticated(this.user);
}/// State when the user is authenticated

class Unauthenticated extends AuthState {}

class AuthError extends AuthState {
  final String message;

  AuthError(this.message);
}/// State when there is an error during authentication