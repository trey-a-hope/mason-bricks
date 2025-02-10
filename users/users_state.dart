part of 'users_bloc.dart';

class UsersState {
  final String? cursor;
  

  UsersState({
    required this.cursor,
    
  });
}

class UsersInitial extends UsersState {
  UsersInitial({
    required super.cursor,
    
  });
}

class UsersLoading extends UsersState {
  UsersLoading({
    required super.cursor,
    
  });
}

class UsersLoaded extends UsersState {
  final List<User> users;

  UsersLoaded({
    required this.users,
    required super.cursor,
    
  });
}

class UsersSuccess extends UsersState {
  final String message;

  UsersSuccess({
    required this.message,
    required super.cursor,
    
  });
}

class UsersError extends UsersState {
  final String message;

  UsersError({
    required this.message,
    required super.cursor,
    
  });
}