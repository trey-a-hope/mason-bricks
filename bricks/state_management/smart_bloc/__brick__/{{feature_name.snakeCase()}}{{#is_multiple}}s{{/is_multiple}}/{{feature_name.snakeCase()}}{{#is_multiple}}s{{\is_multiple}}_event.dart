part of '{{feature_name.snakeCase()}}{{#is_multiple}}s{{/is_multiple}}_bloc.dart';

{{#is_multiple}}
sealed class {{feature_name.pascalCase()}}sEvent {}

class Fetch{{feature_name.pascalCase()}}s extends {{feature_name.pascalCase()}}sEvent {}

class FetchMore{{feature_name.pascalCase()}}s extends {{feature_name.pascalCase()}}sEvent {}
{{/is_multiple}}
{{^is_multiple}}
sealed class {{feature_name.pascalCase()}}Event {}

class Read{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {
  final String id;

  Read{{feature_name.pascalCase()}}({required this.id});
}
{{/is_multiple}}

{{#include_create}}
class Create{{feature_name.pascalCase()}} extends {{#is_multiple}}{{feature_name.pascalCase()}}sEvent{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}Event{{/is_multiple}} {
  final Map<String, dynamic> data;

  Create{{feature_name.pascalCase()}}({required this.data});
}
{{/include_create}}

{{#include_update}}
class Update{{feature_name.pascalCase()}} extends {{#is_multiple}}{{feature_name.pascalCase()}}sEvent{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}Event{{/is_multiple}} {
  final String id;
  final Map<String, dynamic> data;

  Update{{feature_name.pascalCase()}}({
    required this.id,
    required this.data,
  });
}
{{/include_update}}

{{#include_delete}}
class Delete{{feature_name.pascalCase()}} extends {{#is_multiple}}{{feature_name.pascalCase()}}sEvent{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}Event{{/is_multiple}} {
  final String id;

  Delete{{feature_name.pascalCase()}}({required this.id});
}
{{/include_delete}}