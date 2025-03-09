part of '{{feature_name.snakeCase()}}{{#is_multiple}}s{{/is_multiple}}_bloc.dart';

{{#is_multiple}}
{{#has_state_object}}
sealed class {{feature_name.pascalCase()}}sState {
  final List<{{state_object_type}}>? {{feature_name.camelCase()}}s;
  final String? cursor;

  {{feature_name.pascalCase()}}sState(this.{{feature_name.camelCase()}}s, this.cursor);
}

class {{feature_name.pascalCase()}}sInitial extends {{feature_name.pascalCase()}}sState {
  {{feature_name.pascalCase()}}sInitial(super.{{feature_name.camelCase()}}s, super.cursor);
}

class {{feature_name.pascalCase()}}sLoading extends {{feature_name.pascalCase()}}sState {
  {{feature_name.pascalCase()}}sLoading(super.{{feature_name.camelCase()}}s, super.cursor);
}

class {{feature_name.pascalCase()}}sLoaded extends {{feature_name.pascalCase()}}sState {
  {{feature_name.pascalCase()}}sLoaded(super.{{feature_name.camelCase()}}s, super.cursor);
}

class {{feature_name.pascalCase()}}sSuccess extends {{feature_name.pascalCase()}}sState {
  final String message;
  {{feature_name.pascalCase()}}sSuccess(super.{{feature_name.camelCase()}}s, super.cursor, this.message);
}

class {{feature_name.pascalCase()}}sError extends {{feature_name.pascalCase()}}sState {
  final String message;
  {{feature_name.pascalCase()}}sError(super.{{feature_name.camelCase()}}s, super.cursor, this.message);
}
{{/has_state_object}}
{{^has_state_object}}
sealed class {{feature_name.pascalCase()}}sState {
  final String? cursor;
  
  const {{feature_name.pascalCase()}}sState(this.cursor);
}

class {{feature_name.pascalCase()}}sInitial extends {{feature_name.pascalCase()}}sState {
  const {{feature_name.pascalCase()}}sInitial([super.cursor]);
}

class {{feature_name.pascalCase()}}sLoading extends {{feature_name.pascalCase()}}sState {
  const {{feature_name.pascalCase()}}sLoading([super.cursor]);
}

class {{feature_name.pascalCase()}}sLoaded extends {{feature_name.pascalCase()}}sState {
  const {{feature_name.pascalCase()}}sLoaded([super.cursor]);
}

class {{feature_name.pascalCase()}}sSuccess extends {{feature_name.pascalCase()}}sState {
  final String message;
  const {{feature_name.pascalCase()}}sSuccess(this.message, [super.cursor]);
}

class {{feature_name.pascalCase()}}sError extends {{feature_name.pascalCase()}}sState {
  final String message;
  const {{feature_name.pascalCase()}}sError(this.message, [super.cursor]);
}
{{/has_state_object}}
{{/is_multiple}}
{{^is_multiple}}
{{#has_state_object}}
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
{{/has_state_object}}
{{^has_state_object}}
sealed class {{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}State();
}

class {{feature_name.pascalCase()}}Initial extends {{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}Initial();
}

class {{feature_name.pascalCase()}}Loading extends {{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}Loading();
}

class {{feature_name.pascalCase()}}Loaded extends {{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}Loaded();
}

class {{feature_name.pascalCase()}}Success extends {{feature_name.pascalCase()}}State {
  final String message;
  const {{feature_name.pascalCase()}}Success(this.message);
}

class {{feature_name.pascalCase()}}Error extends {{feature_name.pascalCase()}}State {
  final String message;
  const {{feature_name.pascalCase()}}Error(this.message);
}
{{/has_state_object}}
{{/is_multiple}}