part of '{{feature_name.snakeCase()}}_bloc.dart';

class {{feature_name.pascalCase()}}State {
  final String? cursor;
  {{#base_state_vars}}
  final {{{.}}}
  {{/base_state_vars}}

  {{feature_name.pascalCase()}}State({
    required this.cursor,
    {{#base_state_vars}}
    required this.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}Initial extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}Initial({
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}Loading extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}Loading({
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}Loaded extends {{feature_name.pascalCase()}}State {
  final List<{{model_name.pascalCase()}}> {{feature_name.camelCase()}};

  {{feature_name.pascalCase()}}Loaded({
    required this.{{feature_name.camelCase()}},
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}Success extends {{feature_name.pascalCase()}}State {
  final String message;

  {{feature_name.pascalCase()}}Success({
    required this.message,
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()}}Error extends {{feature_name.pascalCase()}}State {
  final String message;

  {{feature_name.pascalCase()}}Error({
    required this.message,
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}