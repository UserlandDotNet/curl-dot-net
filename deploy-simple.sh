#!/bin/bash
# SIMPLE DEPLOYMENT - No BS, just deploy

echo "🚀 Simple Deploy - Because life's too short for complex CI/CD"
echo "==========================================================="

# 1. Build and test locally
echo "1️⃣ Building..."
dotnet build -c Release || exit 1

echo "2️⃣ Testing..."
dotnet test -c Release || exit 1

# 2. Build docs
echo "3️⃣ Building docs..."
cd build/docfx
docfx build || exit 1
cd ../..

# 3. Deploy docs to GitHub Pages
echo "4️⃣ Deploying docs to GitHub Pages..."
git checkout gh-pages 2>/dev/null || git checkout -b gh-pages
git rm -rf . 2>/dev/null || true
cp -r build/docfx/_site/* .
touch .nojekyll
git add -A
git commit -m "Update docs $(date +%Y-%m-%d)" || true
git push origin gh-pages --force
git checkout dev

# 4. Pack NuGet
echo "5️⃣ Building NuGet package..."
rm -rf nupkg
dotnet pack src/CurlDotNet/CurlDotNet.csproj -c Release -o ./nupkg

# 5. Show results
echo ""
echo "✅ DONE! Everything built successfully."
echo ""
echo "📚 Docs will be live at: https://jacob-mellor.github.io/curl-dot-net/"
echo "📦 NuGet package ready at: ./nupkg/"
echo ""
echo "To publish NuGet package, run:"
echo "  dotnet nuget push ./nupkg/*.nupkg -k YOUR_KEY -s https://api.nuget.org/v3/index.json"
echo ""
echo "That's it. No workflows, no YAML, no BS. Just works."