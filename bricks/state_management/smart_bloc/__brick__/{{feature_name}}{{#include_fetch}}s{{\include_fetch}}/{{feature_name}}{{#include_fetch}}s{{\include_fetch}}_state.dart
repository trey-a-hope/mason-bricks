part of '{{feature_name.snakeCase()}}{{#include_fetch}}s{{/include_fetch}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  final String? cursor;

   {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State({
    this.cursor,
  });
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Initial extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loading extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loaded extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  {{#include_fetch}}
  final List<{{state_object_type}}> {{feature_name.camelCase()}}s;
  final String? newCursor;


  {{feature_name.pascalCase()}}sLoaded({
    required this.{{feature_name.camelCase()}}s,
    this.newCursor,
  }) : super(cursor: newCursor);
  {{/include_fetch}}
  {{^include_fetch}}
  final {{state_object_type}} {{feature_name.camelCase()}};
  final String? newCursor;


  {{feature_name.pascalCase()}}Loaded({
    required this.{{feature_name.camelCase()}},
    this.newCursor,
  }) : super(cursor: newCursor);
  {{/include_fetch}}
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Success extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  final String message;

  {{#include_fetch}}
  {{feature_name.pascalCase()}}sSuccess({
    required this.message,
  });
  {{/include_fetch}}
  {{^include_fetch}}
  {{feature_name.pascalCase()}}Success({
    required this.message,
  }) : super();
  {{/include_fetch}}
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Error extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  final String message;

  {{#include_fetch}}
  {{feature_name.pascalCase()}}sError({
    required this.message,
  });
  {{/include_fetch}}
  {{^include_fetch}}
  {{feature_name.pascalCase()}}Error({
    required this.message,
  }) : super();
  {{/include_fetch}}
}