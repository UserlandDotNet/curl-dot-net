#!/bin/bash
# Generate documentation into gh-pages folder for deployment

set -e

echo "📚 Generating documentation into gh-pages folder..."
echo "================================================"

# Clean and create gh-pages folder
rm -rf gh-pages
mkdir -p gh-pages/api

# 1. Build the project to generate XML docs
echo "🔨 Building project to generate XML documentation..."
dotnet build src/CurlDotNet/CurlDotNet.csproj -c Release -p:GenerateDocumentationFile=true -v quiet || {
    echo "❌ Build failed"
    exit 1
}

# 2. Generate API documentation
echo "📝 Generating API documentation..."

# Use DefaultDocumentation for API docs
defaultdocumentation \
    -a src/CurlDotNet/obj/Release/netstandard2.0/CurlDotNet.dll \
    -o gh-pages/api \
    --GeneratedPages "Types" \
    --IncludeUndocumentedItems true \
    --GeneratedAccessModifiers "Public, Protected" || {
    echo "❌ Documentation generation failed"
    exit 1
}

echo "✅ Generated $(find gh-pages/api -name "*.md" | wc -l) API documentation files"

# 3. Create Jekyll configuration
echo "⚙️  Creating Jekyll configuration..."
cat > gh-pages/_config.yml << 'EOF'
title: CurlDotNet Documentation
description: Pure .NET implementation of curl for C#
baseurl: "/curl-dot-net"
url: "https://jacob-mellor.github.io"
theme: jekyll-theme-cayman
plugins:
  - jekyll-sitemap
  - jekyll-seo-tag
exclude:
  - README.md
  - .gitignore
  - generate-docs.csx
EOF

# 4. Create main index page
echo "📄 Creating main index page..."
cat > gh-pages/index.md << 'EOF'
---
layout: default
title: CurlDotNet - Pure .NET curl for C#
---

# CurlDotNet Documentation

A pure .NET implementation of curl for C#. No native dependencies, just clean C# code.

## Quick Start

```csharp
// Simple GET request
var response = await Curl.GetAsync("https://api.example.com/data");
Console.WriteLine(response.Body);
```

## Documentation

- [API Reference](api/) - Complete API documentation
- [Getting Started](getting-started/) - Installation and first steps
- [Tutorials](tutorials/) - Step-by-step guides
- [Cookbook](cookbook/) - Common recipes
- [Guides](guides/) - Advanced topics
- [Reference](reference/) - Technical reference

## Installation

```bash
dotnet add package CurlDotNet
```

Or via Package Manager:

```powershell
Install-Package CurlDotNet
```

## Why CurlDotNet?

- **Pure C#** - No P/Invoke, no native dependencies
- **curl Compatible** - Use curl command syntax directly
- **Cross Platform** - Works on Windows, Linux, macOS
- **Well Documented** - Comprehensive documentation with examples
- **Feature Complete** - Supports all major curl options

## Links

- [GitHub Repository](https://github.com/jacob-mellor/curl-dot-net)
- [NuGet Package](https://www.nuget.org/packages/CurlDotNet/)
- [Report Issues](https://github.com/jacob-mellor/curl-dot-net/issues)
EOF

# 5. Create API index
echo "📋 Creating API index page..."
cat > gh-pages/api/index.md << 'EOF'
---
layout: default
title: API Reference
---

# CurlDotNet API Reference

Complete API documentation for all classes and namespaces.

## Key Classes

### Main Entry Points
- [Curl](CurlDotNet.Curl.md) - Static methods for simple operations
- [CurlRequestBuilder](CurlDotNet.Core.CurlRequestBuilder.md) - Fluent API for complex requests

### Core Types
- [CurlResult](CurlDotNet.Core.CurlResult.md) - Response object with rich functionality
- [CurlOptions](CurlDotNet.Core.CurlOptions.md) - All available curl options
- [CurlSettings](CurlDotNet.Core.CurlSettings.md) - Configuration settings

### Exceptions
- [CurlException](CurlDotNet.Exceptions.CurlException.md) - Base exception class
- [CurlHttpException](CurlDotNet.Exceptions.CurlHttpException.md) - HTTP-specific errors
- [CurlTimeoutException](CurlDotNet.Exceptions.CurlTimeoutException.md) - Timeout errors

### Middleware
- [ICurlMiddleware](CurlDotNet.Middleware.ICurlMiddleware.md) - Middleware interface
- [RetryMiddleware](CurlDotNet.Middleware.RetryMiddleware.md) - Retry logic
- [RateLimitMiddleware](CurlDotNet.Middleware.RateLimitMiddleware.md) - Rate limiting

## Namespaces

- **[CurlDotNet](CurlDotNet.md)** - Main namespace with public API
- **[CurlDotNet.Core](CurlDotNet.Core.md)** - Core functionality
- **[CurlDotNet.Exceptions](CurlDotNet.Exceptions.md)** - Exception types
- **[CurlDotNet.Middleware](CurlDotNet.Middleware.md)** - Middleware components
- **[CurlDotNet.Extensions](CurlDotNet.Extensions.md)** - Extension methods
- **[CurlDotNet.Lib](CurlDotNet.Lib.md)** - Internal implementation

## Quick Examples

### Simple GET Request
```csharp
var response = await Curl.GetAsync("https://api.example.com/data");
Console.WriteLine(response.Body);
```

### POST with JSON
```csharp
var data = new { name = "John", age = 30 };
var response = await Curl.PostJsonAsync("https://api.example.com/users", data);
```

### Using the Fluent Builder
```csharp
var response = await new CurlRequestBuilder()
    .Post("https://api.example.com/data")
    .WithHeader("Authorization", "Bearer token")
    .WithTimeout(TimeSpan.FromSeconds(30))
    .WithRetry(3)
    .ExecuteAsync();
```
EOF

# 6. Copy existing documentation
echo "📂 Copying existing documentation..."
for dir in tutorials cookbook getting-started guides reference; do
    if [ -d "docs/$dir" ]; then
        cp -r "docs/$dir" gh-pages/
        echo "✅ Copied $dir"
    fi
done

# 7. Ensure all directories have index files
echo "📝 Ensuring all directories have index files..."
for dir in gh-pages/*/; do
    if [ ! -f "$dir/index.md" ] && [ ! -f "$dir/README.md" ]; then
        dirname=$(basename "$dir")
        echo "# $dirname" > "$dir/index.md"
        echo "" >> "$dir/index.md"
        echo "Documentation for $dirname." >> "$dir/index.md"
        echo "✅ Created index for $dirname"
    fi
done

# 8. Clean up any temporary files
rm -f generate-docs.csx

echo ""
echo "========================================="
echo "✅ Documentation generation complete!"
echo ""
echo "📊 Summary:"
echo "  - Location: ./gh-pages/"
echo "  - API docs: $(find gh-pages/api -name "*.md" 2>/dev/null | wc -l) files"
echo "  - Total size: $(du -sh gh-pages | cut -f1)"
echo ""
echo "📝 The gh-pages folder is ready for deployment"
echo "   by the GitHub workflow on push/merge"
echo "========================================="