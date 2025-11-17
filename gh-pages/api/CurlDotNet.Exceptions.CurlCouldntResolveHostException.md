#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlCouldntResolveHostException Class

CURLE\_COULDNT\_RESOLVE\_HOST \(6\) \- Couldn't resolve host

```csharp
public class CurlCouldntResolveHostException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlCouldntResolveHostException
### Constructors

<a name='CurlDotNet.Exceptions.CurlCouldntResolveHostException.CurlCouldntResolveHostException(string,string)'></a>

## CurlCouldntResolveHostException\(string, string\) Constructor

```csharp
public CurlCouldntResolveHostException(string hostname, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlCouldntResolveHostException.CurlCouldntResolveHostException(string,string).hostname'></a>

`hostname` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlCouldntResolveHostException.CurlCouldntResolveHostException(string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlCouldntResolveHostException.Hostname'></a>

## CurlCouldntResolveHostException\.Hostname Property

```csharp
public string Hostname { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')