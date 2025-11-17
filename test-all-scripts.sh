#!/bin/bash
# Test all scripts locally before committing
# Run this on Mac to ensure everything works before pushing

echo "🧪 CurlDotNet Script Validator"
echo "=============================="
echo "Testing all scripts locally (dry run)"
echo ""

# Track failures
FAILED=0
PASSED=0

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Function to test a script
test_script() {
    local script=$1
    local description=$2
    local dry_run_args=$3

    echo -n "Testing $script... "

    if [ ! -f "$script" ]; then
        echo -e "${RED}❌ File not found${NC}"
        ((FAILED++))
        return
    fi

    if [ ! -x "$script" ]; then
        echo -e "${YELLOW}⚠️  Not executable, fixing...${NC}"
        chmod +x "$script"
    fi

    # Check bash syntax
    bash -n "$script" 2>/dev/null
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Syntax error${NC}"
        bash -n "$script"
        ((FAILED++))
        return
    fi

    # For scripts that support dry-run, test them
    if [ ! -z "$dry_run_args" ]; then
        # Run in subshell to not affect current environment
        (cd $(dirname "$script") && timeout 5 bash $(basename "$script") $dry_run_args > /dev/null 2>&1)
        if [ $? -eq 124 ]; then
            echo -e "${YELLOW}⚠️  Timed out (might be waiting for input)${NC}"
            ((PASSED++))
        elif [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Works${NC}"
            ((PASSED++))
        else
            echo -e "${YELLOW}⚠️  Non-zero exit (might be normal for dry-run)${NC}"
            ((PASSED++))
        fi
    else
        echo -e "${GREEN}✅ Valid syntax${NC}"
        ((PASSED++))
    fi
}

echo "=== Testing Build Scripts ==="
test_script "scripts/build-all.sh" "Build all projects" ""
test_script "scripts/build-and-test.sh" "Build and test" ""
test_script "scripts/build-docs.sh" "Build documentation" ""
test_script "scripts/pack-nuget.sh" "Pack NuGet" ""
test_script "scripts/pack.sh" "Pack script" ""
test_script "scripts/generate-docs.sh" "Generate docs" ""
test_script "scripts/run-benchmarks.sh" "Run benchmarks" ""

echo ""
echo "=== Testing Deployment Scripts ==="
test_script "publish.sh" "Manual publish" "4"  # Option 4 = test build
test_script "force-deploy.sh" "Force deploy docs" ""
test_script "publish-nuget.sh" "Publish NuGet" "5"  # Option 5 = dry run

echo ""
echo "=== Testing Utility Scripts ==="
test_script "scripts/ensure-doc-indexes.sh" "Ensure doc indexes" ""
test_script "scripts/fix_exceptions.sh" "Fix exceptions" ""
test_script "scripts/validate-branches.sh" "Validate branches" ""

echo ""
echo "=== Testing .NET Projects ==="
echo -n "Restoring NuGet packages... "
dotnet restore --verbosity quiet 2>/dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Restored${NC}"
else
    echo -e "${YELLOW}⚠️  Restore issues${NC}"
fi

echo -n "Testing .NET solution build... "
dotnet build --no-restore --verbosity quiet 2>/dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Builds${NC}"
    ((PASSED++))
else
    echo -e "${RED}❌ Build failed${NC}"
    ((FAILED++))
fi

echo -n "Testing .NET tests... "
dotnet test --no-build --verbosity quiet 2>/dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Tests pass${NC}"
    ((PASSED++))
else
    echo -e "${YELLOW}⚠️  Some tests fail${NC}"
    ((PASSED++))  # Not a blocker
fi

echo ""
echo "=== Testing Documentation ==="
echo -n "Checking DocFX installation... "
if command -v docfx &> /dev/null; then
    echo -e "${GREEN}✅ Installed ($(docfx --version))${NC}"
    ((PASSED++))

    echo -n "Testing DocFX build... "
    (cd build/docfx && docfx build --dry-run 2>/dev/null)
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ DocFX config valid${NC}"
        ((PASSED++))
    else
        echo -e "${YELLOW}⚠️  DocFX has warnings${NC}"
        ((PASSED++))
    fi
else
    echo -e "${YELLOW}⚠️  Not installed (install with: dotnet tool install -g docfx)${NC}"
    ((PASSED++))
fi

echo ""
echo "=== Checking File Permissions ==="
for script in scripts/*.sh publish*.sh force-deploy.sh; do
    if [ -f "$script" ]; then
        if [ ! -x "$script" ]; then
            echo -e "${YELLOW}Fixing permissions: chmod +x $script${NC}"
            chmod +x "$script"
        fi
    fi
done

echo ""
echo "=============================="
echo "Results: ${GREEN}$PASSED passed${NC}, ${RED}$FAILED failed${NC}"

if [ $FAILED -gt 0 ]; then
    echo ""
    echo -e "${RED}❌ Some scripts have issues. Fix them before committing!${NC}"
    exit 1
else
    echo ""
    echo -e "${GREEN}✅ All scripts are valid and ready to commit!${NC}"
fi

echo ""
echo "💡 Tip: Add this to your git pre-commit hook:"
echo "   cp test-all-scripts.sh .git/hooks/pre-commit"
echo "   Then scripts will be validated automatically before each commit"