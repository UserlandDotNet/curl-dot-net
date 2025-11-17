#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlFileCouldntReadException Class

CURLE\_FILE\_COULDNT\_READ\_FILE \(37\) \- Couldn't read file

```csharp
public class CurlFileCouldntReadException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlFileCouldntReadException
### Constructors

<a name='CurlDotNet.Exceptions.CurlFileCouldntReadException.CurlFileCouldntReadException(string,string)'></a>

## CurlFileCouldntReadException\(string, string\) Constructor

```csharp
public CurlFileCouldntReadException(string filePath, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlFileCouldntReadException.CurlFileCouldntReadException(string,string).filePath'></a>

`filePath` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlFileCouldntReadException.CurlFileCouldntReadException(string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlFileCouldntReadException.FilePath'></a>

## CurlFileCouldntReadException\.FilePath Property

```csharp
public string FilePath { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')