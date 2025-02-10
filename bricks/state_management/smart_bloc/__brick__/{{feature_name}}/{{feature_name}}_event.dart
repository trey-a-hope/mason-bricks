part of '{{feature_name.snakeCase()}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}Event {}

class Fetch{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {}

class FetchMore{{feature_name.pascalCase()}} extends {{feature_name.pascalCase()}}Event {}