#!/usr/bin/env bash

# Add several blank lines
echo -e "\n\n\n\n\n\n\n\n"

TESTER_BACKENDS=verilator sbt "test:run-main Pipeline.Launcher $1"
