part of '{{feature_name.snakeCase()}}_bloc.dart';

class {{feature_name.pascalCase()}}State {
  final String? cursor;

  {{feature_name.pascalCase()}}State({
    required this.cursor,
  });
}

class {{feature_name.pascalCase()}}sInitial extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}sInitial({
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}sLoading extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}sLoading({
    required super.cursor,
  });
}

// class {{feature_name.pascalCase()}}sLoaded extends {{feature_name.pascalCase()}}State {
//   {{#include_fetch}}
//   final List<{{feature_name.pascalCase()}}> {{feature_name.camelCase()}}s;
//   {{/include_fetch}}
//   {{^include_fetch}}
//   final {{feature_name.pascalCase()}} {{feature_name.camelCase()}};
//   {{/include_fetch}}

//   {{feature_name.pascalCase()}}sLoaded({
//     {{#include_fetch}}
//     required this.{{feature_name.camelCase()}}s,
//     {{/include_fetch}}
//     {{^include_fetch}}
//     required this.{{feature_name.camelCase()}},
//     {{/include_fetch}}
//     required super.cursor,
//   });
// }

class {{feature_name.pascalCase()}}sSuccess extends {{feature_name.pascalCase()}}State {
  final String message;

  {{feature_name.pascalCase()}}sSuccess({
    required this.message,
    required super.cursor,
  });
}

class {{feature_name.pascalCase()}}sError extends {{feature_name.pascalCase()}}State {
  final String message;

  {{feature_name.pascalCase()}}sError({
    required this.message,
    required super.cursor,
  });
}