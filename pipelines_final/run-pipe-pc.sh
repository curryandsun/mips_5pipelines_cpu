#!/usr/bin/env bash

# Add several blank lines
echo -e "\n\n\n\n\n\n\n\n"

sbt "test:run-main Pipeline.Launcher_p $1"
