# Mason Bricks

Trey's collection of [Mason](https://pub.dev/packages/mason_cli) bricks: code templates that generate Flutter boilerplate for GetX pages, Riverpod notifiers, Flame sprite components and Smart Bloc features. The bricks are registered in `mason.yaml` so you can run them from this repo or add them to another project.

## Bricks

| Brick | Path | Variables | Generates |
| --- | --- | --- | --- |
| `getx` | `bricks/state_management/getx` | `name` | `{{name}}/{{name}}_view.dart` and a `GetxController` view model in `{{name}}_view_model.dart` |
| `async_notifier` | `bricks/state_management/riverpod/async_notifier` | `name`, `type` (state type, default `int`) | a Riverpod `AsyncNotifier` in `<name>/<name>_notifier.dart` |
| `auto_dispose_async_notifier` | `bricks/state_management/riverpod/auto_dispose_async_notifier` | `name`, `type` | the same, as an `AutoDisposeAsyncNotifier` |
| `sprite_component` | `bricks/flame/sprite_component` | `name`, `game_name` | a Flame `SpriteComponent` with `HasGameRef<GameNameGame>`, collision callbacks and a velocity, in `<name>_sprite_component.dart` |
| `smart_bloc` | `bricks/state_management/smart_bloc` | `feature_name`, `state_object`, `is_multiple`, `include_create`, `include_update`, `include_delete` | a Bloc, events, states and screen built for the [Smart Bloc](https://github.com/trey-a-hope/smart-bloc) pattern, with fetch and fetch-more events plus optional create, update and delete |

The `smart_bloc` brick has a `pre_gen` hook (`hooks/pre_gen.dart`) that maps simple type names (`string`, `int`, `datetime` and so on) to Dart types and sets `has_state_object`. Its templates import Gift Grab code (`package:gift_grab/...` for `AuthBloc` and `NakamaSessionService`), so they're meant for that app and need those imports changed elsewhere.

## Usage

Install the Mason CLI, then fetch and run a brick:

```sh
dart pub global activate mason_cli
mason get
mason make getx --name profile
mason make async_notifier --name UserProfile --type User
mason make sprite_component --name gift --game_name gift_grab
mason make smart_bloc --feature_name friend --state_object Friend --is_multiple true
```

To use these bricks in another project, point its `mason.yaml` at this repo:

```yaml
bricks:
  smart_bloc:
    git:
      url: https://github.com/trey-a-hope/mason-bricks
      path: bricks/state_management/smart_bloc
```

## Notes

- In the `smart_bloc` template folder, three file names close the `is_multiple` section with `{{\is_multiple}}` instead of `{{/is_multiple}}`, and the screen template is named `..._screen.dart.dart`. Generated file names will come out wrong until those are renamed.
- The brick READMEs and `brick.yaml` descriptions are still the Mason defaults.
- `pubspec.yaml` (Dart `^3.3.0`) pulls in `flutter_riverpod`, `get` and `mason` so the templates resolve in an editor.
- `.dart_tool/` folders and the hook's compiled `build/` output are committed and can be ignored.
