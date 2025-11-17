#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlFtpException Class

Thrown when FTP operations fail

```csharp
public class CurlFtpException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlFtpException
### Constructors

<a name='CurlDotNet.Exceptions.CurlFtpException.CurlFtpException(string,int,string)'></a>

## CurlFtpException\(string, int, string\) Constructor

```csharp
public CurlFtpException(string message, int ftpCode, string command=null);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlFtpException.CurlFtpException(string,int,string).message'></a>

`message` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlFtpException.CurlFtpException(string,int,string).ftpCode'></a>

`ftpCode` [System\.Int32](https://learn.microsoft.com/en-us/dotnet/api/system.int32 'System\.Int32')

<a name='CurlDotNet.Exceptions.CurlFtpException.CurlFtpException(string,int,string).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')
### Properties

<a name='CurlDotNet.Exceptions.CurlFtpException.FtpCode'></a>

## CurlFtpException\.FtpCode Property

```csharp
public int FtpCode { get; }
```

#### Property Value
[System\.Int32](https://learn.microsoft.com/en-us/dotnet/api/system.int32 'System\.Int32')