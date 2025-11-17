#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlNotSupportedException Class

Thrown when a required feature is not supported

```csharp
public class CurlNotSupportedException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlNotSupportedException
### Constructors

<a name='CurlDotNet.Exceptions.CurlNotSupportedException.CurlNotSupportedException(string,string)'></a>

## CurlNotSupportedException\(string, string\) Constructor

```csharp
public CurlNotSupportedException(string feature, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlNotSupportedException.CurlNotSupportedException(string,string).feature'></a>

`feature` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlNotSupportedException.CurlNotSupportedException(string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlNotSupportedException.Feature'></a>

## CurlNotSupportedException\.Feature Property

```csharp
public string Feature { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')