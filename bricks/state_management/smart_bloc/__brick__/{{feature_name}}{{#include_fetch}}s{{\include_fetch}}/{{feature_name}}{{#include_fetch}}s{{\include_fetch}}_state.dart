part of '{{feature_name.snakeCase()}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}State {
  final {{state_object_type}}? {{feature_name.camelCase()}};

  {{feature_name.pascalCase()}}State(this.{{feature_name.camelCase()}});
}

class {{feature_name.pascalCase()}}Initial extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}Initial(super.{{feature_name.camelCase()}});
}

class {{feature_name.pascalCase()}}Loading extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}Loading(super.{{feature_name.camelCase()}});
}

class {{feature_name.pascalCase()}}Loaded extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}Loaded(super.{{feature_name.camelCase()}});
}

class {{feature_name.pascalCase()}}Success extends {{feature_name.pascalCase()}}State {
  final String message;
  {{feature_name.pascalCase()}}Success(super.{{feature_name.camelCase()}}, this.message);
}

class {{feature_name.pascalCase()}}Error extends {{feature_name.pascalCase()}}State {
  final String message;
  {{feature_name.pascalCase()}}Error(super.{{feature_name.camelCase()}}, this.message);
}