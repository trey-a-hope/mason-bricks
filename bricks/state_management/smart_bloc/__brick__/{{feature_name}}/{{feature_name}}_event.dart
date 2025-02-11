part of '{{feature_name.snakeCase()}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}Event {}

{{#include_fetch}}
class Fetch{{feature_name.pascalCase()s}} extends {{feature_name.pascalCase()}}Event {}

class FetchMore{{feature_name.pascalCase()s}} extends {{feature_name.pascalCase()}}Event {}
{{/include_fetch}}

{{#include_create}}
class Create{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {
  final Map<String, dynamic> data;

  Create{{feature_name.pascalCase()}}({required this.data});
}
{{/include_create}}

{{#include_read}}
class Read{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {
  final String id;

  Read{{feature_name.pascalCase()}}({required this.id});
}
{{/include_read}}

{{#include_update}}
class Update{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {
  final String id;
  final Map<String, dynamic> data;

  Update{{feature_name.pascalCase()}}({
    required this.id,
    required this.data,
  });
}
{{/include_update}}

{{#include_delete}}
class Delete{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {
  final String id;

  Delete{{feature_name.pascalCase()}}({required this.id});
}
{{/include_delete}}