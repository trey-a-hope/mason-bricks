import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc/grpc.dart';

part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  final AuthBloc authBloc;
  final NakamaService _nakamaService;

  {{feature_name.pascalCase()}}Bloc({
    required this.authBloc,
  })  : _nakamaService = NakamaService(),
        super({{feature_name.pascalCase()}}Initial(cursor: null)) {
    on<Fetch{{feature_name.pascalCase()}}>(_onFetch{{feature_name.pascalCase()}});
    on<FetchMore{{feature_name.pascalCase()}}>(_onFetchMore{{feature_name.pascalCase()}});
  }

  Future<void> _onFetch{{feature_name.pascalCase()}}(
    Fetch{{feature_name.pascalCase()}} event,
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

  Future<void> _onFetchMore{{feature_name.pascalCase()}}(
    FetchMore{{feature_name.pascalCase()}} event,
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
}