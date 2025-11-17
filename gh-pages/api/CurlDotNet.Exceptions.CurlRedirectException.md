#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlRedirectException Class

Thrown when redirect limit is exceeded

```csharp
public class CurlRedirectException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlRedirectException
### Constructors

<a name='CurlDotNet.Exceptions.CurlRedirectException.CurlRedirectException(string,int,string,string)'></a>

## CurlRedirectException\(string, int, string, string\) Constructor

```csharp
public CurlRedirectException(string message, int redirectCount, string lastUrl=null, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlRedirectException.CurlRedirectException(string,int,string,string).message'></a>

`message` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlRedirectException.CurlRedirectException(string,int,string,string).redirectCount'></a>

`redirectCount` [System\.Int32](https://learn.microsoft.com/en-us/dotnet/api/system.int32 'System\.Int32')

<a name='CurlDotNet.Exceptions.CurlRedirectException.CurlRedirectException(string,int,string,string).lastUrl'></a>

`lastUrl` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlRedirectException.CurlRedirectException(string,int,string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlRedirectException.LastUrl'></a>

## CurlRedirectException\.LastUrl Property

```csharp
public string LastUrl { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlRedirectException.RedirectCount'></a>

## CurlRedirectException\.RedirectCount Property

```csharp
public int RedirectCount { get; }
```

#### Property Value
[System\.Int32](https://learn.microsoft.com/en-us/dotnet/api/system.int32 'System\.Int32')