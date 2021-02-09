#!/bin/sh
set -e
cd /workdir/vertx-eventbus
dotnet restore
dotnet build --no-restore
dotnet pack -c Release --include-source
