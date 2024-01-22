#! /usr/bin/env bash
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`
version="${ts}"
sed -i -e "s/<Version>.*<\/Version>/<Version>${version}<\/Version>/g" dll.csproj
rm -rf obj bin nupkg
dotnet pack -c release -o nupkg dll.csproj
