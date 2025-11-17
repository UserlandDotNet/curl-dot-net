#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlMalformedUrlException Class

CURLE\_URL\_MALFORMAT \(3\) \- Malformed URL

```csharp
public class CurlMalformedUrlException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlMalformedUrlException
### Constructors

<a name='CurlDotNet.Exceptions.CurlMalformedUrlException.CurlMalformedUrlException(string,string)'></a>

## CurlMalformedUrlException\(string, string\) Constructor

```csharp
public CurlMalformedUrlException(string url, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlMalformedUrlException.CurlMalformedUrlException(string,string).url'></a>

`url` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlMalformedUrlException.CurlMalformedUrlException(string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlMalformedUrlException.MalformedUrl'></a>

## CurlMalformedUrlException\.MalformedUrl Property

```csharp
public string MalformedUrl { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')