#!/bin/bash

# Usage:
# ./run_tests.sh <app-directory>

# Generate goldens for the specified project.
cd "$1" || exit
flutter test --update-goldens --tags=golden
