part of '{{feature_name.snakeCase()}}_bloc.dart';

class {{feature_name.pascalCase()s}}sState {
  final String? cursor;
  {{#base_state_vars}}
  final {{{.}}}
  {{/base_state_vars}}

  {{feature_name.pascalCase()s}}State({
    required this.cursor,
    {{#base_state_vars}}
    required this.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()s}}Initial extends {{feature_name.pascalCase()s}}State {
  {{feature_name.pascalCase()s}}Initial({
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()s}}Loading extends {{feature_name.pascalCase()s}}State {
  {{feature_name.pascalCase()s}}Loading({
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()s}}Loaded extends {{feature_name.pascalCase()s}}State {
  final List<{{model_name.pascalCase()s}}> {{feature_name.camelCase()}};

  {{feature_name.pascalCase()s}}Loaded({
    required this.{{feature_name.camelCase()}},
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()s}}Success extends {{feature_name.pascalCase()s}}State {
  final String message;

  {{feature_name.pascalCase()s}}Success({
    required this.message,
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}

class {{feature_name.pascalCase()s}}Error extends {{feature_name.pascalCase()s}}State {
  final String message;

  {{feature_name.pascalCase()s}}Error({
    required this.message,
    required super.cursor,
    {{#base_state_vars}}
    required super.{{{.}}},
    {{/base_state_vars}}
  });
}