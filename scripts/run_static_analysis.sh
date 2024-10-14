#!/bin/bash

# Run static analysis on the specified directory.
cd "$1" || exit
flutter pub get
flutter analyze --dartdocs

# Run dart_code_linter additional analysis.
flutter pub run dart_code_linter:metrics analyze lib --reporter=github
