import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gift_grab/data/services/nakama_service.dart';
import 'package:gift_grab/domain/blocs/auth/auth_bloc.dart';
import 'package:grpc/grpc.dart';

part '{{feature_name.snakeCase()}}{{#include_fetch}}s{{/include_fetch}}_event.dart';
part '{{feature_name.snakeCase()}}{{#include_fetch}}s{{/include_fetch}}_state.dart';

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Bloc extends Bloc<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Event, {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> {
  final AuthBloc authBloc;
  final NakamaService _nakamaService;

  {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Bloc({
    required this.authBloc,
  })  : _nakamaService = NakamaService(),
        {{#include_fetch}}
        super({{feature_name.pascalCase()}}sInitial(cursor: null)) {
        {{/include_fetch}}
        {{^include_fetch}}
        super({{feature_name.pascalCase()}}Initial()) {
        {{/include_fetch}}
    {{#include_fetch}}
    on<Fetch{{feature_name.pascalCase()}}s>(_onFetch{{feature_name.pascalCase()}}s);
    on<FetchMore{{feature_name.pascalCase()}}s>(_onFetchMore{{feature_name.pascalCase()}}s);
    {{/include_fetch}}
    {{^include_fetch}}
    on<Read{{feature_name.pascalCase()}}>(_onRead{{feature_name.pascalCase()}});
    {{/include_fetch}}
    {{#include_create}}on<Create{{feature_name.pascalCase()}}>(_onCreate{{feature_name.pascalCase()}});{{/include_create}}
    {{#include_update}}on<Update{{feature_name.pascalCase()}}>(_onUpdate{{feature_name.pascalCase()}});{{/include_update}}
    {{#include_delete}}on<Delete{{feature_name.pascalCase()}}>(_onDelete{{feature_name.pascalCase()}});{{/include_delete}}
  }

  {{#include_fetch}}
  Future<void> _onFetch{{feature_name.pascalCase()}}s(
    Fetch{{feature_name.pascalCase()}}s event,
    Emitter<{{feature_name.pascalCase()}}sState> emit,
  ) async {
    emit({{feature_name.pascalCase()}}sLoading(cursor: state.cursor));

    try {
      // TODO: Implement fetch logic here
      // final response = await _nakamaService.fetch{{feature_name.pascalCase()}}s();
      // final {{feature_name.camelCase()}}s = response.{{feature_name.camelCase()}}s;
      // final cursor = response.cursor;

      // emit(
      //   {{feature_name.pascalCase()}}sLoaded(
      //     {{feature_name.camelCase()}}s: [],
      //     cursor: null,
      //   ),
      // );
      throw UnimplementedError();
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}sError(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}sError(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
    }
  }

  Future<void> _onFetchMore{{feature_name.pascalCase()}}s(
    FetchMore{{feature_name.pascalCase()}}s event,
    Emitter<{{feature_name.pascalCase()}}sState> emit,
  ) async {
    emit({{feature_name.pascalCase()}}sLoading(cursor: state.cursor));

    try {
      // TODO: Implement fetch more logic here
      // final response = await _nakamaService.fetch{{feature_name.pascalCase()}}s(cursor: state.cursor);
      // final {{feature_name.camelCase()}}s = response.{{feature_name.camelCase()}}s;
      // final cursor = response.cursor;

      // if (state is {{feature_name.pascalCase()}}sLoaded) {
      //   final currentState = state as {{feature_name.pascalCase()}}sLoaded;
      //   emit(
      //     {{feature_name.pascalCase()}}sLoaded(
      //       {{feature_name.camelCase()}}s: [...currentState.{{feature_name.camelCase()}}s, ...<{{state_object_type}}>[]],
      //       cursor: null,
      //     ),
      //   );
      // }
      throw UnimplementedError();
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}sError(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}sError(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
    }
  }
  {{/include_fetch}}

  {{^include_fetch}}
  Future<void> _onRead{{feature_name.pascalCase()}}(
    Read{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit({{feature_name.pascalCase()}}Loading());

    try {
      // TODO: Implement read logic here
      // final {{feature_name.camelCase()}} = await _nakamaService.read{{feature_name.pascalCase()}}(event.id);

      // emit(
      //   {{feature_name.pascalCase()}}Loaded(
      //     {{feature_name.camelCase()}}: {{feature_name.camelCase()}},
      //   ),
      // );
      throw UnimplementedError();
    } on GrpcError catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
        ),
      );
    } catch (e) {
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
        ),
      );
    }
  }
  {{/include_fetch}}

  {{#include_create}}
  Future<void> _onCreate{{feature_name.pascalCase()}}(
    Create{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> emit,
  ) async {
    {{#include_fetch}}
    emit({{feature_name.pascalCase()}}sLoading(cursor: state.cursor));
    {{/include_fetch}}
    {{^include_fetch}}
    emit({{feature_name.pascalCase()}}Loading());
    {{/include_fetch}}

    try {
      // TODO: Implement create logic here
      // await _nakamaService.create{{feature_name.pascalCase()}}(event.data);

      // {{#include_fetch}}
      // emit(
      //   {{feature_name.pascalCase()}}sSuccess(
      //     message: '{{feature_name.pascalCase()}} created successfully',
      //     cursor: state.cursor,
      //   ),
      // );
      // {{/include_fetch}}
      // {{^include_fetch}}
      // emit(
      //   {{feature_name.pascalCase()}}Success(
      //     message: '{{feature_name.pascalCase()}} created successfully',
      //   ),
      // );
      // {{/include_fetch}}
      throw UnimplementedError();
    } on GrpcError catch (e) {
      {{#include_fetch}}
      emit(
        {{feature_name.pascalCase()}}sError(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
      {{/include_fetch}}
      {{^include_fetch}}
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
        ),
      );
      {{/include_fetch}}
    } catch (e) {
      {{#include_fetch}}
      emit(
        {{feature_name.pascalCase()}}sError(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
      {{/include_fetch}}
      {{^include_fetch}}
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
        ),
      );
      {{/include_fetch}}
    }
  }
  {{/include_create}}

  {{#include_update}}
  Future<void> _onUpdate{{feature_name.pascalCase()}}(
    Update{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> emit,
  ) async {
    {{#include_fetch}}
    emit({{feature_name.pascalCase()}}sLoading(cursor: state.cursor));
    {{/include_fetch}}
    {{^include_fetch}}
    emit({{feature_name.pascalCase()}}Loading());
    {{/include_fetch}}

    try {
      // TODO: Implement update logic here
      // await _nakamaService.update{{feature_name.pascalCase()}}(event.id, event.data);

      // {{#include_fetch}}
      // emit(
      //   {{feature_name.pascalCase()}}sSuccess(
      //     message: '{{feature_name.pascalCase()}} updated successfully',
      //     cursor: state.cursor,
      //   ),
      // );
      // {{/include_fetch}}
      // {{^include_fetch}}
      // emit(
      //   {{feature_name.pascalCase()}}Success(
      //     message: '{{feature_name.pascalCase()}} updated successfully',
      //   ),
      // );
      // {{/include_fetch}}
      throw UnimplementedError();
    } on GrpcError catch (e) {
      {{#include_fetch}}
      emit(
        {{feature_name.pascalCase()}}sError(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
      {{/include_fetch}}
      {{^include_fetch}}
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
        ),
      );
      {{/include_fetch}}
    } catch (e) {
      {{#include_fetch}}
      emit(
        {{feature_name.pascalCase()}}sError(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
      {{/include_fetch}}
      {{^include_fetch}}
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
        ),
      );
      {{/include_fetch}}
    }
  }
  {{/include_update}}

  {{#include_delete}}
  Future<void> _onDelete{{feature_name.pascalCase()}}(
    Delete{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> emit,
  ) async {
    {{#include_fetch}}
    emit({{feature_name.pascalCase()}}sLoading(cursor: state.cursor));
    {{/include_fetch}}
    {{^include_fetch}}
    emit({{feature_name.pascalCase()}}Loading());
    {{/include_fetch}}

    try {
      // TODO: Implement delete logic here
      // await _nakamaService.delete{{feature_name.pascalCase()}}(event.id);

      // {{#include_fetch}}
      // emit(
      //   {{feature_name.pascalCase()}}sSuccess(
      //     message: '{{feature_name.pascalCase()}} deleted successfully',
      //     cursor: state.cursor,
      //   ),
      // );
      // {{/include_fetch}}
      // {{^include_fetch}}
      // emit(
      //   {{feature_name.pascalCase()}}Success(
      //     message: '{{feature_name.pascalCase()}} deleted successfully',
      //   ),
      // );
      // {{/include_fetch}}
      throw UnimplementedError();
    } on GrpcError catch (e) {
      {{#include_fetch}}
      emit(
        {{feature_name.pascalCase()}}sError(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
          cursor: state.cursor,
        ),
      );
      {{/include_fetch}}
      {{^include_fetch}}
      emit(
        {{feature_name.pascalCase()}}Error(
          message: e.message ?? 'Unknown GRPC Error: ${e.codeName}',
        ),
      );
      {{/include_fetch}}
    } catch (e) {
      {{#include_fetch}}
      emit(
        {{feature_name.pascalCase()}}sError(
          message: 'Unexpected error: ${e.toString()}',
          cursor: state.cursor,
        ),
      );
      {{/include_fetch}}
      {{^include_fetch}}
      emit(
        {{feature_name.pascalCase()}}Error(
          message: 'Unexpected error: ${e.toString()}',
        ),
      );
      {{/include_fetch}}
    }
  }
  {{/include_delete}}
}