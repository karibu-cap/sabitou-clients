#!/bin/bash

# Run dart format on the specified directory.
dart format --output none --set-exit-if-changed "$1"
