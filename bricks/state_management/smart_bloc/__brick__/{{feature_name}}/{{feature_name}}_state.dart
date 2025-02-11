part of '{{feature_name.snakeCase()}}_bloc.dart';

class {{feature_name.pascalCase()}}sState {
  final String? cursor;

  {{feature_name.pascalCase()}}sState({
    required this.cursor,
  });
}

class {{feature_name.pascalCase()}}sInitial extends {{feature_name.pascalCase()}}sState {
  {{feature_name.pascalCase()}}sInitial({
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}sLoading extends {{feature_name.pascalCase()}}sState {
  {{feature_name.pascalCase()}}sLoading({
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}sLoaded extends {{feature_name.pascalCase()}}sState {
  final List<{{feature_name.pascalCase()}}> {{feature_name.camelCase()}}s;

  {{feature_name.pascalCase()}}sLoaded({
    required this.{{feature_name.camelCase()}}s,
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}sSuccess extends {{feature_name.pascalCase()}}sState {
  final String message;

  {{feature_name.pascalCase()}}sSuccess({
    required this.message,
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}sError extends {{feature_name.pascalCase()}}sState {
  final String message;

  {{feature_name.pascalCase()}}sError({
    required this.message,
    required super.cursor,
  });
}