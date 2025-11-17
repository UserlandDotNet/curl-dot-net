#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlUnknownOptionException Class

CURLE\_UNKNOWN\_OPTION \(48\) \- Unknown option

```csharp
public class CurlUnknownOptionException : CurlDotNet.Exceptions.CurlInvalidCommandException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; [CurlInvalidCommandException](CurlDotNet.Exceptions.CurlInvalidCommandException.md 'CurlDotNet\.Exceptions\.CurlInvalidCommandException') &#129106; CurlUnknownOptionException
### Constructors

<a name='CurlDotNet.Exceptions.CurlUnknownOptionException.CurlUnknownOptionException(string,string)'></a>

## CurlUnknownOptionException\(string, string\) Constructor

```csharp
public CurlUnknownOptionException(string optionName, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlUnknownOptionException.CurlUnknownOptionException(string,string).optionName'></a>

`optionName` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlUnknownOptionException.CurlUnknownOptionException(string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlUnknownOptionException.OptionName'></a>

## CurlUnknownOptionException\.OptionName Property

```csharp
public string OptionName { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')