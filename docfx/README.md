# CurlDotNet Documentation

Welcome to the official CurlDotNet documentation. This documentation is built with DocFX and automatically deployed to GitHub Pages.

## Documentation Structure

### Getting Started
- [Quick Start Guide](articles/getting-started.md) - Get up and running in minutes
- [Installation](articles/installation.md) - Detailed installation instructions
- [First curl Command](articles/first-command.md) - Your first curl command in C#

### Core Concepts
- [Understanding curl Options](articles/curl-options.md) - All 300+ curl options explained
- [Three APIs](articles/three-apis.md) - String, Fluent, and LibCurl APIs
- [Response Handling](articles/response-handling.md) - Working with CurlResult

### Guides
- [Migrating from HttpClient](articles/migration-guide.md) - Migrate existing code
- [Authentication Guide](articles/authentication.md) - All authentication methods
- [File Operations](articles/file-operations.md) - Upload and download files
- [Error Handling](articles/error-handling.md) - Exception hierarchy and best practices

### Advanced Topics
- [Performance Optimization](articles/performance.md) - Tips and best practices
- [Middleware](articles/middleware.md) - Extending CurlDotNet
- [Custom Protocols](articles/custom-protocols.md) - Extending protocol support
- [Testing with CurlDotNet](articles/testing.md) - Unit and integration testing

### API Reference
- [Full API Documentation](api/index.md) - Complete API reference

### Examples
- [Real-World Examples](articles/examples.md) - Production-ready code samples
- [Common Patterns](articles/patterns.md) - Best practices and patterns
- [Troubleshooting](articles/troubleshooting.md) - Common issues and solutions

## Building Documentation Locally

```bash
# Install DocFX globally
dotnet tool install -g docfx

# Build documentation
cd docfx
docfx build

# Serve locally
docfx serve _site
```

## Contributing to Documentation

We welcome documentation contributions! Please:

1. Fork the repository
2. Create a feature branch
3. Add or update documentation in the `docfx` folder
4. Submit a pull request

## License

This documentation is part of CurlDotNet, licensed under the MIT License.