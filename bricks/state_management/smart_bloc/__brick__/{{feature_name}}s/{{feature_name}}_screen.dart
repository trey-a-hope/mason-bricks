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
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return GGScaffoldWidget(
      title: '{{feature_name.pascalCase()}}s',
      child: Center(
        child: BlocConsumer<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
          listener: listener,
          builder: builder,
        ),
      ),
    );
  }
}