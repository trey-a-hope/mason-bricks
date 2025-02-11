part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  final AuthBloc authBloc;
  final NakamaService _nakamaService;

  {{feature_name.pascalCase()}}Bloc({
    required this.authBloc,
  })  : _nakamaService = NakamaService(),
        super({{feature_name.pascalCase()}}Initial(cursor: null)) {
    {{#include_fetch}}on<Fetch{{feature_name.pascalCase()}}s>(_onFetch{{feature_name.pascalCase()}}s);
    on<FetchMore{{feature_name.pascalCase()}}s>(_onFetchMore{{feature_name.pascalCase()}}s);{{/include_fetch}}
    {{#include_create}}on<Create{{feature_name.pascalCase()}}>(_onCreate{{feature_name.pascalCase()}});{{/include_create}}
    {{#include_read}}on<Read{{feature_name.pascalCase()}}>(_onRead{{feature_name.pascalCase()}});{{/include_read}}
    {{#include_update}}on<Update{{feature_name.pascalCase()}}>(_onUpdate{{feature_name.pascalCase()}});{{/include_update}}
    {{#include_delete}}on<Delete{{feature_name.pascalCase()}}>(_onDelete{{feature_name.pascalCase()}});{{/include_delete}}
  }

  {{#include_fetch}}
  Future<void> _onFetch{{feature_name.pascalCase()}}s(
    Fetch{{feature_name.pascalCase()}}s event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit({{feature_name.pascalCase()}}Loading(cursor: state.cursor));

    try {
      // TODO: Implement fetch logic here
      // final response = await _nakamaService.fetch{{feature_name.pascalCase()}}();
      // final {{feature_name.camelCase()}} = response.{{feature_name.camelCase()}};
      // final cursor = response.cursor;

      emit(
        {{feature_name.pascalCase()}}Loaded(
          {{feature_name.camelCase()}}: {{feature_name.camelCase()}},
          cursor: cursor,
        ),
      );
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
    }
  }

  Future<void> _onFetchMore{{feature_name.pascalCase()}}s(
    FetchMore{{feature_name.pascalCase()}}s event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit({{feature_name.pascalCase()}}Loading(cursor: state.cursor));

    try {
      // TODO: Implement fetch more logic here
      // final response = await _nakamaService.fetch{{feature_name.pascalCase()}}(cursor: state.cursor);
      // final {{feature_name.camelCase()}} = response.{{feature_name.camelCase()}};
      // final cursor = response.cursor;

      if (state is {{feature_name.pascalCase()}}Loaded) {
        final currentState = state as {{feature_name.pascalCase()}}Loaded;
        emit(
          {{feature_name.pascalCase()}}Loaded(
            {{feature_name.camelCase()}}: [...currentState.{{feature_name.camelCase()}}, ...{{feature_name.camelCase()}}],
            cursor: cursor,
          ),
        );
      }
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
    }
  }
  {{/include_fetch}}

  {{#include_create}}
  Future<void> _onCreate{{feature_name.pascalCase()}}(
    Create{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit({{feature_name.pascalCase()}}Loading(cursor: state.cursor));

    try {
      // TODO: Implement create logic here
      // await _nakamaService.create{{feature_name.pascalCase()}}(event.data);

      emit(
        {{feature_name.pascalCase()}}Success(
          message: '{{feature_name.pascalCase()}} created successfully',
          cursor: state.cursor,
        ),
      );
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
    }
  }
  {{/include_create}}

  {{#include_read}}
  Future<void> _onRead{{feature_name.pascalCase()}}(
    Read{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit({{feature_name.pascalCase()}}Loading(cursor: state.cursor));

    try {
      // TODO: Implement read logic here
      // final {{feature_name.camelCase()}} = await _nakamaService.read{{feature_name.pascalCase()}}(event.id);

      emit(
        {{feature_name.pascalCase()}}Loaded(
          {{feature_name.camelCase()}}: {{feature_name.camelCase()}},
          cursor: state.cursor,
        ),
      );
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
    }
  }
  {{/include_read}}

  {{#include_update}}
  Future<void> _onUpdate{{feature_name.pascalCase()}}(
    Update{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit({{feature_name.pascalCase()}}Loading(cursor: state.cursor));

    try {
      // TODO: Implement update logic here
      // await _nakamaService.update{{feature_name.pascalCase()}}(event.id, event.data);

      emit(
        {{feature_name.pascalCase()}}Success(
          message: '{{feature_name.pascalCase()}} updated successfully',
          cursor: state.cursor,
        ),
      );
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
    }
  }
  {{/include_update}}

  {{#include_delete}}
  Future<void> _onDelete{{feature_name.pascalCase()}}(
    Delete{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit({{feature_name.pascalCase()}}Loading(cursor: state.cursor));

    try {
      // TODO: Delete logic here...

      emit(
        {{feature_name.pascalCase()}}Success(
          message: '{{feature_name.pascalCase()}} deleted successfully',
          cursor: state.cursor,
        ),
      );
    } on GrpcError catch (e) {
      emit({{feature_name.pascalCase()}}Error(
          cursor: state.cursor,
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}'));
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          cursor: state.cursor,
          message: 'Unexpected error: ${e.toString()}',
        ),
      );
    }
  }
  {{/include_delete}}
}