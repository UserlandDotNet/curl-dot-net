#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlCookieException Class

Thrown when cookie operations fail

```csharp
public class CurlCookieException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlCookieException
### Constructors

<a name='CurlDotNet.Exceptions.CurlCookieException.CurlCookieException(string,string,string,System.Exception)'></a>

## CurlCookieException\(string, string, string, Exception\) Constructor

```csharp
public CurlCookieException(string message, string cookieJarPath=null, string command=null, System.Exception innerException=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlCookieException.CurlCookieException(string,string,string,System.Exception).message'></a>

`message` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlCookieException.CurlCookieException(string,string,string,System.Exception).cookieJarPath'></a>

`cookieJarPath` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlCookieException.CurlCookieException(string,string,string,System.Exception).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlCookieException.CurlCookieException(string,string,string,System.Exception).innerException'></a>

`innerException` [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception')
### Properties

<a name='CurlDotNet.Exceptions.CurlCookieException.CookieJarPath'></a>

## CurlCookieException\.CookieJarPath Property

```csharp
public string CookieJarPath { get; }
```

#### Property Value
[System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')