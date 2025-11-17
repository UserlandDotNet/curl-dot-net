#### [CurlDotNet](index.md 'index')
### [CurlDotNet\.Exceptions](index.md#CurlDotNet.Exceptions 'CurlDotNet\.Exceptions')

## CurlRetryException Class

Thrown when retry attempts are exhausted

```csharp
public class CurlRetryException : CurlDotNet.Exceptions.CurlException
```

Inheritance [System\.Object](https://learn.microsoft.com/en-us/dotnet/api/system.object 'System\.Object') &#129106; [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception') &#129106; [CurlException](CurlDotNet.Exceptions.CurlException.md 'CurlDotNet\.Exceptions\.CurlException') &#129106; CurlRetryException
### Constructors

<a name='CurlDotNet.Exceptions.CurlRetryException.CurlRetryException(string,string,int,System.Exception)'></a>

## CurlRetryException\(string, string, int, Exception\) Constructor

```csharp
public CurlRetryException(string message, string command, int retryCount, System.Exception lastException);
```
#### Parameters

<a name='CurlDotNet.Exceptions.CurlRetryException.CurlRetryException(string,string,int,System.Exception).message'></a>

`message` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlRetryException.CurlRetryException(string,string,int,System.Exception).command'></a>

`command` [System\.String](https://learn.microsoft.com/en-us/dotnet/api/system.string 'System\.String')

<a name='CurlDotNet.Exceptions.CurlRetryException.CurlRetryException(string,string,int,System.Exception).retryCount'></a>

`retryCount` [System\.Int32](https://learn.microsoft.com/en-us/dotnet/api/system.int32 'System\.Int32')

<a name='CurlDotNet.Exceptions.CurlRetryException.CurlRetryException(string,string,int,System.Exception).lastException'></a>

`lastException` [System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception')
### Properties

<a name='CurlDotNet.Exceptions.CurlRetryException.LastAttemptException'></a>

## CurlRetryException\.LastAttemptException Property

```csharp
public System.Exception LastAttemptException { get; }
```

#### Property Value
[System\.Exception](https://learn.microsoft.com/en-us/dotnet/api/system.exception 'System\.Exception')

<a name='CurlDotNet.Exceptions.CurlRetryException.RetryCount'></a>

## CurlRetryException\.RetryCount Property

```csharp
public int RetryCount { get; }
```

#### Property Value
[System\.Int32](https://learn.microsoft.com/en-us/dotnet/api/system.int32 'System\.Int32')