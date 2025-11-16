# Installation Guide

This guide covers all installation methods for CurlDotNet across different platforms and project types.

## Prerequisites

- **.NET SDK** - Version 6.0 or higher
- **IDE** (optional but recommended):
  - Visual Studio 2022 or later
  - Visual Studio Code with C# extension
  - JetBrains Rider

## Installation Methods

### 1. .NET CLI (Recommended)

The simplest way to add CurlDotNet to your project:

```bash
dotnet add package CurlDotNet
```

To install a specific version:

```bash
dotnet add package CurlDotNet --version 1.0.0
```

### 2. Package Manager Console

In Visual Studio, open the Package Manager Console:

```powershell
Install-Package CurlDotNet
```

For a specific version:

```powershell
Install-Package CurlDotNet -Version 1.0.0
```

### 3. PackageReference in .csproj

Add directly to your project file:

```xml
<ItemGroup>
  <PackageReference Include="CurlDotNet" Version="1.0.0" />
</ItemGroup>
```

Then restore packages:

```bash
dotnet restore
```

### 4. Visual Studio NuGet UI

1. Right-click on your project in Solution Explorer
2. Select "Manage NuGet Packages"
3. Click "Browse" tab
4. Search for "CurlDotNet"
5. Click "Install"

## Platform-Specific Installation

### .NET 10 / .NET 8 Projects

CurlDotNet is optimized for modern .NET:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>net10.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="CurlDotNet" Version="1.0.0" />
  </ItemGroup>
</Project>
```

### .NET Framework Projects

For .NET Framework 4.7.2 and above:

```xml
<packages>
  <package id="CurlDotNet" version="1.0.0" targetFramework="net472" />
</packages>
```

### .NET Standard Libraries

For maximum compatibility:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>netstandard2.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="CurlDotNet" Version="1.0.0" />
  </ItemGroup>
</Project>
```

## Special Environments

### Azure Functions

CurlDotNet works seamlessly in Azure Functions:

```csharp
[FunctionName("CurlExample")]
public static async Task<IActionResult> Run(
    [HttpTrigger(AuthorizationLevel.Function, "get")] HttpRequest req)
{
    var result = await Curl.ExecuteAsync("curl https://api.example.com");
    return new OkObjectResult(result.Body);
}
```

### Docker Containers

No curl binary needed in your container:

```dockerfile
FROM mcr.microsoft.com/dotnet/runtime:8.0
WORKDIR /app
COPY . .
# No need for: RUN apt-get install curl
ENTRYPOINT ["dotnet", "YourApp.dll"]
```

### Blazor WebAssembly

CurlDotNet works in Blazor WASM projects:

```csharp
@page "/curl-demo"
@using CurlDotNet

<button @onclick="ExecuteCurl">Execute</button>
<p>@result</p>

@code {
    private string result = "";

    private async Task ExecuteCurl()
    {
        var response = await Curl.ExecuteAsync("curl https://api.example.com");
        result = response.Body;
    }
}
```

### Unity Projects

For Unity 2018.1+:

1. Download the CurlDotNet.dll from NuGet
2. Place in Assets/Plugins folder
3. Ensure .NET Standard 2.0 compatibility in Player Settings

## Verification

After installation, verify CurlDotNet is working:

```csharp
using System;
using System.Threading.Tasks;
using CurlDotNet;

class Program
{
    static async Task Main()
    {
        try
        {
            var result = await Curl.ExecuteAsync("curl https://httpbin.org/get");
            Console.WriteLine("Success! CurlDotNet is installed correctly.");
            Console.WriteLine($"Response: {result.Body}");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
        }
    }
}
```

## Troubleshooting Installation

### Common Issues

**Issue: Package not found**
```bash
error: Unable to find package CurlDotNet
```
**Solution:** Ensure you're using the correct package source:
```bash
dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org
```

**Issue: Version conflicts**
```bash
error NU1605: Detected package downgrade
```
**Solution:** Update all packages to compatible versions:
```bash
dotnet add package CurlDotNet --force
```

**Issue: Platform not supported**
**Solution:** Ensure you're targeting a supported framework. CurlDotNet supports:
- .NET 10.0+
- .NET 8.0+
- .NET 6.0+
- .NET 5.0+
- .NET Core 2.0+
- .NET Framework 4.7.2+
- .NET Standard 2.0+

## Updating CurlDotNet

To update to the latest version:

```bash
dotnet add package CurlDotNet --version "*"
```

Or to a specific version:

```bash
dotnet add package CurlDotNet --version 1.0.1
```

## Next Steps

- [Getting Started Guide](getting-started.md) - Start using CurlDotNet
- [Your First curl Command](first-command.md) - Execute your first command
- [API Reference](../api/index.md) - Complete API documentation