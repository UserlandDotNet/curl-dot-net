#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlInterfaceFailedException Class

CURLE\_INTERFACE\_FAILED \(45\) \- Interface failed

```csharp
public class CurlInterfaceFailedException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlInterfaceFailedException
### Constructors

<a name='CurlDotNet.Exceptions.CurlInterfaceFailedException.CurlInterfaceFailedException(string,string)'></a>

## CurlInterfaceFailedException\(string, string\) Constructor

```csharp
public CurlInterfaceFailedException(string interfaceName, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlInterfaceFailedException.CurlInterfaceFailedException(string,string).interfaceName'></a>

`interfaceName` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlInterfaceFailedException.CurlInterfaceFailedException(string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlInterfaceFailedException.InterfaceName'></a>

## CurlInterfaceFailedException\.InterfaceName Property

```csharp
public string InterfaceName { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')