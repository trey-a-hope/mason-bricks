import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_bloc/smart_bloc.dart';

{{#is_multiple}}
class {{feature_name.pascalCase()}}sScreen extends SmartBloc<{{feature_name.pascalCase()}}sBloc, {{feature_name.pascalCase()}}sState> {
  const {{feature_name.pascalCase()}}sScreen({
    super.key,
  });

  @override
  Widget buildLoadedContent(BuildContext context, dynamic state) {
    state = state as {{feature_name.pascalCase()}}sLoaded;
    throw UnimplementedError();
  }

  @override
  void listener(BuildContext context, {{feature_name.pascalCase()}}sState state) {
    super.listener(context, state);
    debugPrint('State change: $state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{feature_name.pascalCase()}}s'),
      ),
      body: BlocConsumer<{{feature_name.pascalCase()}}sBloc, {{feature_name.pascalCase()}}sState>(
        listener: listener,
        builder: builder,
      ),
    );
  }
}
{{/is_multiple}}
{{^is_multiple}}
class {{feature_name.pascalCase()}}Screen extends SmartBloc<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State> {
  const {{feature_name.pascalCase()}}Screen({
    super.key,
  });

  @override
  Widget buildLoadedContent(BuildContext context, dynamic state) {
    state = state as {{feature_name.pascalCase()}}Loaded;
    throw UnimplementedError();
  }

  @override
  void listener(BuildContext context, {{feature_name.pascalCase()}}State state) {
    super.listener(context, state);
    debugPrint('State change: $state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{feature_name.pascalCase()}}'),
      ),
      body: BlocConsumer<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
        listener: listener,
        builder: builder,
      ),
    );
  }
}
{{/is_multiple}}