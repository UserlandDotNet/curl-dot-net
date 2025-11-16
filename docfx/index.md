# CurlDotNet Documentation

Welcome to CurlDotNet - bringing the power and simplicity of curl to .NET!

## Quick Start

```csharp
// Simple GET request
var result = await Curl.ExecuteAsync("curl https://api.github.com");

// POST with data
var result = await Curl.ExecuteAsync("curl -X POST -d '{\"key\":\"value\"}' https://api.example.com");

// With headers
var result = await Curl.ExecuteAsync("curl -H 'Authorization: Bearer token' https://api.example.com");
```

## Features

- 🚀 **100% curl compatibility** - If it works in curl, it works in CurlDotNet
- 📦 **Zero dependencies** - Pure .NET implementation
- ⚡ **High performance** - Optimized for speed and efficiency
- 🛡️ **Type-safe** - Full IntelliSense support and compile-time checking
- 🌍 **Cross-platform** - Works on Windows, Linux, and macOS

## Documentation

- [Getting Started](manual/getting-started.md)
- [API Reference](api/index.html)
- [Examples](manual/examples/index.html)
- [Architecture](manual/architecture/index.html)
- [Contributing](contributing.md)

## Installation

```bash
dotnet add package CurlDotNet
```

Or via Package Manager:

```powershell
Install-Package CurlDotNet
```

## Support

- [GitHub Issues](https://github.com/yourusername/curl-dot-net/issues)
- [Discussions](https://github.com/yourusername/curl-dot-net/discussions)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/curldotnet)
