# AGENTS.md

## Project

This is a small Flutter learning project. Keep changes simple, readable, and friendly to experimentation.

## Language

- Prefer Korean for explanations, comments in guidance, and user-facing notes unless the surrounding code or file is already English-only.
- The project owner is a TypeScript developer. When explaining Flutter or Dart concepts, relate them to TypeScript, React, Node.js, or familiar frontend patterns when useful.
- Keep code comments short and only add them when they clarify something useful for learning.

## Flutter Conventions

- Main app code lives in `lib/`.
- Tests live in `test/`.
- Use Material widgets unless there is a clear reason to introduce another design system.
- Prefer small widgets and straightforward state management while the project is in learning mode.
- Avoid adding new packages unless they are genuinely useful for the lesson or feature being built.

## Generated And Platform Files

- Do not edit generated or build output files under `build/`, `.dart_tool/`, or `*.g.dart`-style generated files.
- Avoid changing platform directories (`android/`, `ios/`, `macos/`, `linux/`, `windows/`, `web/`) unless the task specifically requires platform configuration.
- When platform files must change, keep the change narrow and explain why.

## Formatting And Quality

- Run `dart format .` after Dart code changes.
- Run `flutter analyze` before finishing meaningful code changes.
- Run `flutter test` when behavior or widgets change.
- Keep `analysis_options.yaml` aligned with `flutter_lints` unless a rule is intentionally changed for learning.

## Dependency Changes

- Update dependencies through `flutter pub add`, `flutter pub remove`, or `flutter pub get` when possible.
- Commit both `pubspec.yaml` and `pubspec.lock` changes together when dependencies change.
- Prefer stable, well-documented Flutter packages.

## Learning Style

- Favor clear examples over clever abstractions.
- If there are multiple reasonable approaches, choose the one that teaches Flutter fundamentals best.
- When refactoring, preserve a path for understanding: small steps, clear names, and minimal hidden behavior.
