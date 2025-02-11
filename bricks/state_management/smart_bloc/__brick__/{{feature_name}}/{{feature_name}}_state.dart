part of '{{feature_name.snakeCase()}}_bloc.dart';

class {{feature_name.pascalCase()}}sState {
  final String? cursor;
  {{#base_state_vars}}
  final {{{.}}}
  {{/base_state_vars}}

  {{feature_name.pascalCase()}}sState({
    required this.cursor,
    {{#base_state_vars}}
    required this.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}sInitial extends {{feature_name.pascalCase()}}sState {
  {{feature_name.pascalCase()}}sInitial({
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}sLoading extends {{feature_name.pascalCase()}}sState {
  {{feature_name.pascalCase()}}sLoading({
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}sLoaded extends {{feature_name.pascalCase()}}sState {
  final List<{{model_name.pascalCase()}}s> {{feature_name.camelCase()}};

  {{feature_name.pascalCase()}}sLoaded({
    required this.{{feature_name.camelCase()}},
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}sSuccess extends {{feature_name.pascalCase()}}sState {
  final String message;

  {{feature_name.pascalCase()}}sSuccess({
    required this.message,
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}sError extends {{feature_name.pascalCase()}}sState {
  final String message;

  {{feature_name.pascalCase()}}sError({
    required this.message,
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}