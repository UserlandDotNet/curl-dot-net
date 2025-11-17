#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlRemoteAccessDeniedException Class

CURLE\_REMOTE\_ACCESS\_DENIED \(9\) \- Access denied to remote resource

```csharp
public class CurlRemoteAccessDeniedException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlRemoteAccessDeniedException
### Constructors

<a name='CurlDotNet.Exceptions.CurlRemoteAccessDeniedException.CurlRemoteAccessDeniedException(string,string)'></a>

## CurlRemoteAccessDeniedException\(string, string\) Constructor

```csharp
public CurlRemoteAccessDeniedException(string resource, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlRemoteAccessDeniedException.CurlRemoteAccessDeniedException(string,string).resource'></a>

`resource` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlRemoteAccessDeniedException.CurlRemoteAccessDeniedException(string,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlRemoteAccessDeniedException.Resource'></a>

## CurlRemoteAccessDeniedException\.Resource Property

```csharp
public string Resource { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')