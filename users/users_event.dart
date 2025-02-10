part of 'users_bloc.dart';

sealed class UsersEvent {}

class FetchUsers extends UsersEvent {}

class FetchMoreUsers extends UsersEvent {}