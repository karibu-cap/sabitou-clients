#!/bin/bash

# Usage:
# ./run_tests.sh <app-directory>

# Run unit tests and widget tests under the specified directory.
cd "$1" || exit

# Generate coverage report while running the unit tests.
flutter test --coverage
