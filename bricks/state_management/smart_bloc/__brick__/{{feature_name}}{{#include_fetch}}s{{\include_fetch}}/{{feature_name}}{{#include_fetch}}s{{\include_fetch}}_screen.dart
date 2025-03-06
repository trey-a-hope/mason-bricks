 import 'package:flutter/material.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:smart_bloc/smart_bloc.dart';

 class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Screen extends SmartBloc<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Bloc, {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> {
  const {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Screen({
    super.key,
  });

  @override
  Widget buildLoadedContent(BuildContext context, dynamic state) {
    state = state as {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Loaded;
    throw UnimplementedError();
  }

  @override
  void listener(BuildContext context, {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State state) {
    super.listener(context, state);
    debugPrint('State change: $state');
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('{{feature_name.pascalCase()}}s'),
      ),
      body: BlocConsumer<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Bloc, {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State>(
          listener: listener,
          builder: builder,
        ),
    );
  }
}