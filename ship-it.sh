#!/bin/bash
# Ship it. That's it.

dotnet build -c Release
dotnet test
dotnet pack -c Release -o nupkg

echo "
✅ Built
✅ Tested
✅ Packed

NuGet package in ./nupkg/
Push to NuGet when you want.
"