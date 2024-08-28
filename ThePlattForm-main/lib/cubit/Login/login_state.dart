
import 'package:flutter/material.dart';


@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final String message;

  LoginSuccess({required this.message , });

}

final class LoginFailuer extends LoginState {
  final String message;

  LoginFailuer({required this.message});
 

  }