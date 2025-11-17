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
