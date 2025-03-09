part of '{{feature_name.snakeCase()}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}State {
  {{#if state_object_type}}
  final {{state_object_type}}? {{feature_name.camelCase()}};

  {{feature_name.pascalCase()}}State(this.{{feature_name.camelCase()}});
  {{else}}
  const {{feature_name.pascalCase()}}State();
  {{/if}}
}

class {{feature_name.pascalCase()}}Initial extends {{feature_name.pascalCase()}}State {
  {{#if state_object_type}}
  {{feature_name.pascalCase()}}Initial(super.{{feature_name.camelCase()}});
  {{else}}
  const {{feature_name.pascalCase()}}Initial();
  {{/if}}
}

class {{feature_name.pascalCase()}}Loading extends {{feature_name.pascalCase()}}State {
  {{#if state_object_type}}
  {{feature_name.pascalCase()}}Loading(super.{{feature_name.camelCase()}});
  {{else}}
  const {{feature_name.pascalCase()}}Loading();
  {{/if}}
}

class {{feature_name.pascalCase()}}Loaded extends {{feature_name.pascalCase()}}State {
  {{#if state_object_type}}
  {{feature_name.pascalCase()}}Loaded(super.{{feature_name.camelCase()}});
  {{else}}
  const {{feature_name.pascalCase()}}Loaded();
  {{/if}}
}

class {{feature_name.pascalCase()}}Success extends {{feature_name.pascalCase()}}State {
  final String message;
  
  {{#if state_object_type}}
  {{feature_name.pascalCase()}}Success(super.{{feature_name.camelCase()}}, this.message);
  {{else}}
  const {{feature_name.pascalCase()}}Success(this.message);
  {{/if}}
}

class {{feature_name.pascalCase()}}Error extends {{feature_name.pascalCase()}}State {
  final String message;
  
  {{#if state_object_type}}
  {{feature_name.pascalCase()}}Error(super.{{feature_name.camelCase()}}, this.message);
  {{else}}
  const {{feature_name.pascalCase()}}Error(this.message);
  {{/if}}
}