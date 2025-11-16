# Getting Started with CurlDotNet

Welcome to CurlDotNet! This guide will help you get up and running in just a few minutes.

## What is CurlDotNet?

CurlDotNet is a pure .NET implementation of curl that allows you to execute curl commands directly in your C# applications. No translation required - just paste curl commands from documentation and they work!

## Installation

Install CurlDotNet via NuGet:

```bash
dotnet add package CurlDotNet
```

Or via Package Manager Console:

```powershell
Install-Package CurlDotNet
```

## Your First curl Command

Here's how simple it is to use CurlDotNet:

```csharp
using CurlDotNet;

// Just paste the curl command from any API documentation
var result = await Curl.ExecuteAsync("curl https://api.github.com/users/octocat");

// Access the response
Console.WriteLine(result.Body);
Console.WriteLine($"Status: {result.StatusCode}");
```

## The Three APIs

CurlDotNet provides three different APIs to suit your needs:

### 1. String API (Simplest)
Perfect for pasting curl commands directly:

```csharp
var result = await Curl.ExecuteAsync(@"
    curl -X POST \
      -H 'Content-Type: application/json' \
      -d '{""name"":""John""}' \
      https://api.example.com/users
");
```

### 2. Fluent Builder API (Type-Safe)
Build requests programmatically with IntelliSense:

```csharp
using CurlDotNet.Core;

var result = await CurlRequestBuilder
    .Post("https://api.example.com/users")
    .WithJson(new { name = "John" })
    .WithBearerToken("token123")
    .ExecuteAsync();
```

### 3. LibCurl API (Reusable)
Create reusable HTTP clients:

```csharp
using CurlDotNet.Lib;

using (var curl = new LibCurl())
{
    curl.WithBearerToken("token123")
        .WithTimeout(TimeSpan.FromSeconds(30));

    var users = await curl.GetAsync("https://api.example.com/users");
    var posts = await curl.GetAsync("https://api.example.com/posts");
}
```

## Common Use Cases

### Making GET Requests
```csharp
// Simple GET
var result = await Curl.ExecuteAsync("curl https://api.example.com/data");

// GET with headers
var result = await Curl.ExecuteAsync(@"
    curl -H 'Accept: application/json' \
         -H 'X-API-Key: your-key' \
         https://api.example.com/data
");
```

### Making POST Requests
```csharp
// POST with JSON
var result = await Curl.ExecuteAsync(@"
    curl -X POST \
      -H 'Content-Type: application/json' \
      -d '{""name"":""John"",""email"":""john@example.com""}' \
      https://api.example.com/users
");

// POST with form data
var result = await Curl.ExecuteAsync(@"
    curl -X POST \
      -d 'username=john&password=secret' \
      https://api.example.com/login
");
```

### Authentication
```csharp
// Bearer Token
var result = await Curl.ExecuteAsync(@"
    curl -H 'Authorization: Bearer YOUR_TOKEN' \
         https://api.example.com/protected
");

// Basic Auth
var result = await Curl.ExecuteAsync(
    "curl -u username:password https://api.example.com/private"
);
```

### Error Handling
```csharp
try
{
    var result = await Curl.ExecuteAsync("curl https://api.example.com");
    result.EnsureSuccess(); // Throws if status >= 400
}
catch (CurlHttpReturnedErrorException ex)
{
    Console.WriteLine($"HTTP error: {ex.StatusCode}");
}
catch (CurlTimeoutException ex)
{
    Console.WriteLine($"Request timed out: {ex.Message}");
}
catch (CurlException ex)
{
    Console.WriteLine($"Curl error: {ex.Message}");
}
```

## Next Steps

- Read the [Installation Guide](installation.md) for detailed setup instructions
- Explore [All curl Options](curl-options.md) supported by CurlDotNet
- Learn about [Response Handling](response-handling.md)
- Check out [Real-World Examples](examples.md)

## Getting Help

- [GitHub Issues](https://github.com/jacob-mellor/curl-dot-net/issues) - Report bugs or request features
- [Discussions](https://github.com/jacob-mellor/curl-dot-net/discussions) - Ask questions
- [API Reference](../api/index.md) - Complete API documentation

Welcome to the CurlDotNet community!