part of '{{feature_name.snakeCase()}}_bloc.dart';

class {{feature_name.pascalCase()}}State {
  final String? cursor;

  {{feature_name.pascalCase()}}State({
    required this.cursor,
  });
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Initial extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Initial({
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loading extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loading({
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loaded extends {{feature_name.pascalCase()}}State {
  {{#include_fetch}}
  final List<{{feature_name.pascalCase()}}> {{feature_name.camelCase()}}s;
  {{/include_fetch}}
  {{^include_fetch}}
  final {{feature_name.pascalCase()}} {{feature_name.camelCase()}};
  {{/include_fetch}}

  {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loaded({
    {{#include_fetch}}
    required this.{{feature_name.camelCase()}}s,
    {{/include_fetch}}
    {{^include_fetch}}
    required this.{{feature_name.camelCase()}},
    {{/include_fetch}}
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Success extends {{feature_name.pascalCase()}}State {
  final String message;

  {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Success({
    required this.message,
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Error extends {{feature_name.pascalCase()}}State {
  final String message;

  {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Error({
    required this.message,
    required super.cursor,
  });
}