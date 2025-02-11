part of '{{feature_name.snakeCase()}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}Event {}

{{#include_fetch}}
class Fetch{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {}

class FetchMore{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {}
{{/include_fetch}}

{{#include_delete}}
class Delete{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {
  final String id;

  Delete{{feature_name.pascalCase()}}({required this.id});
}
{{/include_delete}}