part of '{{feature_name.snakeCase()}}{{#include_fetch}}s{{/include_fetch}}_bloc.dart';

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  {{#include_fetch}}
  final String? cursor;

  {{feature_name.pascalCase()}}sState({
    required this.cursor,
  });
  {{/include_fetch}}
  {{^include_fetch}}
  {{feature_name.pascalCase()}}State();
  {{/include_fetch}}
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Initial extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  {{#include_fetch}}
  {{feature_name.pascalCase()}}sInitial({
    required super.cursor,
  });
  {{/include_fetch}}
  {{^include_fetch}}
  {{feature_name.pascalCase()}}Initial() : super();
  {{/include_fetch}}
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loading extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  {{#include_fetch}}
  {{feature_name.pascalCase()}}sLoading({
    required super.cursor,
  });
  {{/include_fetch}}
  {{^include_fetch}}
  {{feature_name.pascalCase()}}Loading() : super();
  {{/include_fetch}}
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loaded extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  {{#include_fetch}}
  final List<{{state_object_type}}> {{feature_name.camelCase()}}s;

  {{feature_name.pascalCase()}}sLoaded({
    required this.{{feature_name.camelCase()}}s,
    required super.cursor,
  });
  {{/include_fetch}}
  {{^include_fetch}}
  final {{state_object_type}} {{feature_name.camelCase()}};

  {{feature_name.pascalCase()}}Loaded({
    required this.{{feature_name.camelCase()}},
  }) : super();
  {{/include_fetch}}
}

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Success extends {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State {
  final String message;

  {{#include_fetch}}
  {{feature_name.pascalCase()}}sSuccess({
    required this.message,
    required super.cursor,
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
    required super.cursor,
  });
  {{/include_fetch}}
  {{^include_fetch}}
  {{feature_name.pascalCase()}}Error({
    required this.message,
  }) : super();
  {{/include_fetch}}
}