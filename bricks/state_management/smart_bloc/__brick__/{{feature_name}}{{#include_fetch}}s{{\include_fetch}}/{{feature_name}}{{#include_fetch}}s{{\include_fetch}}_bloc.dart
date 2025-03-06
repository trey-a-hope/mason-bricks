import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gift_grab/data/services/nakama_session_service.dart';
import 'package:gift_grab/domain/blocs/auth/auth_bloc.dart';
import 'package:smart_bloc/event_handler_service.dart';

part '{{feature_name.snakeCase()}}{{#include_fetch}}s{{/include_fetch}}_event.dart';
part '{{feature_name.snakeCase()}}{{#include_fetch}}s{{/include_fetch}}_state.dart';

class {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Bloc extends Bloc<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Event, {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> {
  final AuthBloc authBloc;
  final NakamaSessionService _nakamaSessionService;

  {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Bloc({
    required this.authBloc,
  })  : _nakamaSessionService = NakamaSessionService(),
        super({{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Initial()) {
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
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}sState>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        errorState: (message) => {{feature_name.pascalCase()}}sError(message: message),
      );

  Future<void> _onFetchMore{{feature_name.pascalCase()}}s(
    FetchMore{{feature_name.pascalCase()}}s event,
    Emitter<{{feature_name.pascalCase()}}sState> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}sState>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        errorState: (message) => {{feature_name.pascalCase()}}sError(message: message),
      );
  {{/include_fetch}}

  {{^include_fetch}}
  Future<void> _onRead{{feature_name.pascalCase()}}(
    Read{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async  => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}State>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        errorState: (message) => {{feature_name.pascalCase()}}Error(message: message),
      );
  {{/include_fetch}}

  {{#include_create}}
  Future<void> _onCreate{{feature_name.pascalCase()}}(
    Create{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        errorState: (message) => {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Error(message: message),
      );
  {{/include_create}}

  {{#include_update}}
  Future<void> _onUpdate{{feature_name.pascalCase()}}(
    Update{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        errorState: (message) => {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Error(message: message),
      );
  {{/include_update}}

  {{#include_delete}}
  Future<void> _onDelete{{feature_name.pascalCase()}}(
    Delete{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}State>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        errorState: (message) => {{feature_name.pascalCase()}}{{#include_fetch}}s{{/include_fetch}}Error(message: message),
      );
  {{/include_delete}}
}