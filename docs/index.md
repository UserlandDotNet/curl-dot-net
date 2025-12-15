# CurlDotNet Documentation

Welcome to **CurlDotNet** - the pure .NET implementation of curl that allows C# developers to execute curl commands directly in their applications.

**Latest Version:** Fully supports .NET 10, .NET 9, and .NET 8 LTS

## What is CurlDotNet?

CurlDotNet eliminates the friction of translating curl commands to C# code. Simply paste any curl command from API documentation, Stack Overflow, or bash scripts directly into your .NET application, and it works immediately.

## Quick Example

```csharp
using CurlDotNet;

// Just paste any curl command - it works!
var result = await Curl.ExecuteAsync("curl https://api.github.com/users/octocat");

if (result.IsSuccess)
{
    Console.WriteLine(result.Data);
}
```

## Installation

```bash
dotnet add package CurlDotNet
```

## Getting Started

- [Installation Guide](getting-started/installation.md) - Set up CurlDotNet in your project
- [Quick Start](getting-started/quickstart.md) - Make your first request in minutes
- [First Request](getting-started/first-request.md) - Step-by-step walkthrough
- [Configuration](getting-started/configuration.md) - Configure timeouts, SSL, proxies

## Learning Paths

### New to Programming?

1. [What is .NET?](tutorials/01-what-is-dotnet.md)
2. [What is curl?](tutorials/02-what-is-curl.md)
3. [Understanding async/await](tutorials/03-what-is-async.md)
4. [Your First Request](tutorials/04-your-first-request.md)

### Experienced Developer?

1. [Quick Start](getting-started/quickstart.md)
2. [API Guide](api-guide/README.md)
3. [Cookbook](cookbook/README.md)

## Documentation Sections

| Section | Description |
|---------|-------------|
| [Tutorials](tutorials/README.md) | Step-by-step learning for beginners |
| [Cookbook](cookbook/README.md) | Copy-paste recipes for common tasks |
| [API Guide](api-guide/README.md) | Complete API reference with examples |
| [API Reference](api/index.md) | Generated API documentation |
| [Troubleshooting](troubleshooting/README.md) | Solutions to common problems |

## The Three Ways to Use CurlDotNet

### 1. String API (Simplest)

```csharp
var result = await Curl.ExecuteAsync("curl https://api.example.com");
```

### 2. Builder API (Type-Safe)

```csharp
var result = await new CurlRequestBuilder()
    .WithUrl("https://api.example.com")
    .WithHeader("Accept", "application/json")
    .ExecuteAsync();
```

### 3. LibCurl API (Reusable)

```csharp
var curl = new LibCurl()
    .WithBearerToken("token123")
    .WithTimeout(TimeSpan.FromSeconds(30));

var result = await curl.GetAsync("https://api.example.com");
```

## Platform Support

- .NET 10.0 (Preview)
- .NET 9.0
- .NET 8.0 (LTS - Recommended)
- .NET Framework 4.7.2+
- .NET Standard 2.0

## Getting Help

- [GitHub Issues](https://github.com/jacob-mellor/curl-dot-net/issues)
- [Troubleshooting Guide](troubleshooting/README.md)
- [FAQ](troubleshooting/faq.md)

---

*CurlDotNet is sponsored by [IronSoftware](https://ironsoftware.com)*
