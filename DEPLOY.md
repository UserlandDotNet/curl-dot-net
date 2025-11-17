# Deployment - Keep It Simple

## The Problem with Modern CI/CD

You're right - spending 80% of time on build infrastructure instead of building software is insane. GitHub Actions, Docker, complex workflows... it's all overkill for most projects.

## The Simple Solution

### Just One Script That Works™

```bash
./deploy-simple.sh
```

That's it. This script:
1. Builds your code
2. Runs tests
3. Builds documentation
4. Deploys to GitHub Pages
5. Creates NuGet package

**No YAML. No workflows. No debugging cryptic CI failures.**

### When You Want to Release

#### Option 1: Full Auto (30 seconds)
```bash
./deploy-simple.sh
```

#### Option 2: Just Docs
```bash
cd build/docfx && docfx build
# Then manually push to gh-pages if you want
```

#### Option 3: Just NuGet
```bash
dotnet pack -c Release -o ./nupkg
dotnet nuget push ./nupkg/*.nupkg -k YOUR_KEY -s https://api.nuget.org/v3/index.json
```

## Forget Complex Workflows

### What Actually Matters
- ✅ Your code works
- ✅ Your tests pass
- ✅ Your docs are readable
- ✅ Your package publishes

### What Doesn't Matter
- ❌ 27 different workflow files
- ❌ Matrix builds on 5 operating systems
- ❌ Complex PR validation chains
- ❌ Docker containers for everything
- ❌ Spending days debugging YAML

## The Pragmatic Approach

1. **Develop locally** - Your Mac is fine
2. **Test locally** - If it works on your machine, it'll probably work
3. **Deploy manually** - You control when and what deploys
4. **Fix problems directly** - No waiting for CI to maybe work

## If You Really Need CI/CD

Keep it minimal:

```yaml
# .github/workflows/simple.yml
name: Build
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - run: dotnet build
    - run: dotnet test
```

That's 10 lines, not 1000.

## The 80/20 Rule Fixed

- **80%**: Writing actual code that provides value
- **15%**: Testing and documentation
- **5%**: Deployment (run one script)

## Emergency Deployment

When everything else fails:

```bash
# Force deploy docs RIGHT NOW
git checkout gh-pages
cp -r build/docfx/_site/* .
git add -A && git commit -m "Emergency deploy"
git push origin gh-pages --force
git checkout dev

# Push NuGet RIGHT NOW
dotnet pack -c Release
dotnet nuget push *.nupkg -k $NUGET_KEY -s https://api.nuget.org/v3/index.json
```

## Philosophy

> "Perfection is achieved not when there is nothing more to add, but when there is nothing left to take away." - Antoine de Saint-Exupéry

Your build system should be so simple that it can't break.

---

**Remember**: You're building software, not a CI/CD pipeline. Focus on what matters.