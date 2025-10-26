#!/usr/bin/env bash
set -e
ROOT="${1}"
cd "$ROOT/src/Web"
dotnet restore
dotnet build -c Release
dotnet run -c Release
