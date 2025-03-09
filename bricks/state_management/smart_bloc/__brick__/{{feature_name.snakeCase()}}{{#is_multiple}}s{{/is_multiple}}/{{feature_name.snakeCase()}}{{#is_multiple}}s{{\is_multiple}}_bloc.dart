import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gift_grab/data/services/nakama_session_service.dart';
import 'package:gift_grab/domain/blocs/auth/auth_bloc.dart';
import 'package:smart_bloc/event_handler_service.dart';

part '{{feature_name.snakeCase()}}{{#is_multiple}}s{{/is_multiple}}_event.dart';
part '{{feature_name.snakeCase()}}{{#is_multiple}}s{{/is_multiple}}_state.dart';

{{#is_multiple}}
class {{feature_name.pascalCase()}}sBloc extends Bloc<{{feature_name.pascalCase()}}sEvent, {{feature_name.pascalCase()}}sState> {
  final AuthBloc authBloc;
  final NakamaSessionService _nakamaSessionService;

  {{feature_name.pascalCase()}}sBloc({
    required this.authBloc,
  })  : _nakamaSessionService = NakamaSessionService(),
        {{#has_state_object}}
        super({{feature_name.pascalCase()}}sInitial(null, null)) {
        {{/has_state_object}}
        {{^has_state_object}}
        super(const {{feature_name.pascalCase()}}sInitial()) {
        {{/has_state_object}}
    on<Fetch{{feature_name.pascalCase()}}s>(_onFetch{{feature_name.pascalCase()}}s);
    on<FetchMore{{feature_name.pascalCase()}}s>(_onFetchMore{{feature_name.pascalCase()}}s);
    {{#include_create}}on<Create{{feature_name.pascalCase()}}>(_onCreate{{feature_name.pascalCase()}});{{/include_create}}
    {{#include_update}}on<Update{{feature_name.pascalCase()}}>(_onUpdate{{feature_name.pascalCase()}});{{/include_update}}
    {{#include_delete}}on<Delete{{feature_name.pascalCase()}}>(_onDelete{{feature_name.pascalCase()}});{{/include_delete}}
  }

  Future<void> _onFetch{{feature_name.pascalCase()}}s(
    Fetch{{feature_name.pascalCase()}}s event,
    Emitter<{{feature_name.pascalCase()}}sState> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}sState>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(null, null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(message),
        {{/has_state_object}}
      );

  Future<void> _onFetchMore{{feature_name.pascalCase()}}s(
    FetchMore{{feature_name.pascalCase()}}s event,
    Emitter<{{feature_name.pascalCase()}}sState> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}sState>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(null, null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(message),
        {{/has_state_object}}
      );
{{/is_multiple}}
{{^is_multiple}}
class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  final AuthBloc authBloc;
  final NakamaSessionService _nakamaSessionService;

  {{feature_name.pascalCase()}}Bloc({
    required this.authBloc,
  })  : _nakamaSessionService = NakamaSessionService(),
        {{#has_state_object}}
        super({{feature_name.pascalCase()}}Initial(null)) {
        {{/has_state_object}}
        {{^has_state_object}}
        super(const {{feature_name.pascalCase()}}Initial()) {
        {{/has_state_object}}
    on<Read{{feature_name.pascalCase()}}>(_onRead{{feature_name.pascalCase()}});
    {{#include_create}}on<Create{{feature_name.pascalCase()}}>(_onCreate{{feature_name.pascalCase()}});{{/include_create}}
    {{#include_update}}on<Update{{feature_name.pascalCase()}}>(_onUpdate{{feature_name.pascalCase()}});{{/include_update}}
    {{#include_delete}}on<Delete{{feature_name.pascalCase()}}>(_onDelete{{feature_name.pascalCase()}});{{/include_delete}}
  }

  Future<void> _onRead{{feature_name.pascalCase()}}(
    Read{{feature_name.pascalCase()}} event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{feature_name.pascalCase()}}State>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(message),
        {{/has_state_object}}
      );
{{/is_multiple}}

  {{#include_create}}
  Future<void> _onCreate{{feature_name.pascalCase()}}(
    Create{{feature_name.pascalCase()}} event,
    Emitter<{{#is_multiple}}{{feature_name.pascalCase()}}sState{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}State{{/is_multiple}}> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{#is_multiple}}{{feature_name.pascalCase()}}sState{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}State{{/is_multiple}}>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        {{#is_multiple}}
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(null, null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(message),
        {{/has_state_object}}
        {{/is_multiple}}
        {{^is_multiple}}
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(message),
        {{/has_state_object}}
        {{/is_multiple}}
      );
  {{/include_create}}

  {{#include_update}}
  Future<void> _onUpdate{{feature_name.pascalCase()}}(
    Update{{feature_name.pascalCase()}} event,
    Emitter<{{#is_multiple}}{{feature_name.pascalCase()}}sState{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}State{{/is_multiple}}> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{#is_multiple}}{{feature_name.pascalCase()}}sState{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}State{{/is_multiple}}>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        {{#is_multiple}}
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(null, null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(message),
        {{/has_state_object}}
        {{/is_multiple}}
        {{^is_multiple}}
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(message),
        {{/has_state_object}}
        {{/is_multiple}}
      );
  {{/include_update}}

  {{#include_delete}}
  Future<void> _onDelete{{feature_name.pascalCase()}}(
    Delete{{feature_name.pascalCase()}} event,
    Emitter<{{#is_multiple}}{{feature_name.pascalCase()}}sState{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}State{{/is_multiple}}> emit,
  ) async => await EventHandlerService.handleBlocEvent<{{#is_multiple}}{{feature_name.pascalCase()}}sState{{/is_multiple}}{{^is_multiple}}{{feature_name.pascalCase()}}State{{/is_multiple}}>(
        action: () async {
          throw UnimplementedError();
        },
        emit: emit,
        {{#is_multiple}}
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(null, null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}sError(message),
        {{/has_state_object}}
        {{/is_multiple}}
        {{^is_multiple}}
        {{#has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(null, message),
        {{/has_state_object}}
        {{^has_state_object}}
        errorState: (message) => {{feature_name.pascalCase()}}Error(message),
        {{/has_state_object}}
        {{/is_multiple}}
      );
  {{/include_delete}}
}