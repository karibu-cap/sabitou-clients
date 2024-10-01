#!/bin/bash

# Usage:
# ./build_web_app.sh <app-directory> <app-name>

# Build the Web app for the specified project.
cd "$1" || exit

# Build the web version of the flutter app. This will generate a 'build/web' directory.
flutter build web
