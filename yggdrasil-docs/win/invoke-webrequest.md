# Invoke-WebRequest Cmdlet Documentation

The `Invoke-WebRequest` cmdlet in PowerShell is a versatile command used to send HTTP requests and retrieve information from websites. It can be used to download files, retrieve data, or perform various types of web queries. This documentation page provides an overview of the cmdlet's syntax, parameters, and examples of its usage.

## Syntax

```powershell
Invoke-WebRequest [-Uri] <Uri> [-Credential <PSCredential>] [-UseBasicParsing] [-Authentication <AuthenticationLevel>] [-Certificate <X509Certificate2Collection>] [-CertificateThumbprint <String[]>] [-DisableKeepAlive] [-Headers <IDictionary>] [-MaximumRedirection <Int32>] [-Method <WebRequestMethod>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-SkipCertificateCheck] [-TimeoutSec <Int32>] [-UseDefaultCredentials] [-SessionVariable <String>] [-OutFile <String>]
```

## Parameters

- `-Uri <Uri>`: Specifies the URI of the resource. This parameter is mandatory and accepts a string value representing the URL of the web page or file you want to interact with.

- `-Credential <PSCredential>`: Allows you to specify credentials for authentication purposes. Use this parameter if the web resource requires authentication.

- `-UseBasicParsing`: Indicates that basic parsing is used instead of HTML parsing. This can be useful when dealing with non-HTML content or when performance is a concern.

- `-Authentication <AuthenticationLevel>`: Specifies the level of authentication to use for the request. The default value is "MutualAuthRequested".

- `-Certificate <X509Certificate2Collection>`: Allows you to specify a collection of X.509 certificates for client certificate authentication.

- `-CertificateThumbprint <String[]>`: Specifies the thumbprints of the X.509 certificates to use for client certificate authentication. This parameter can be used instead of the `-Certificate` parameter.

- `-DisableKeepAlive`: Disables the keep-alive functionality for the request, which means that the connection will be closed after the response is received.

- `-Headers <IDictionary>`: Allows you to add custom headers to the request. The value of this parameter should be a hashtable where the keys are header names and the values are header values.

- `-MaximumRedirection <Int32>`: Specifies the maximum number of redirects that will be followed by the request. The default value is 5.

- `-Method <WebRequestMethod>`: Specifies the HTTP method to use for the request (e.g., GET, POST, PUT, DELETE). The default value is "GET".

- `-Proxy <Uri>`: Allows you to specify a proxy server to use for the request.

- `-ProxyCredential <PSCredential>`: Allows you to provide credentials for authenticating with the proxy server.

- `-ProxyUseDefaultCredentials`: Indicates that default credentials should be used when connecting through the proxy server.

- `-SkipCertificateCheck`: Disables certificate validation for SSL/TLS connections, which can be useful in testing or development environments where self-signed certificates are used.

- `-TimeoutSec <Int32>`: Specifies the maximum time (in seconds) to wait for a response from the server before the request times out. The default value is 100 seconds.

- `-UseDefaultCredentials`: Indicates that the default credentials of the current user should be used for authentication purposes.

- `-SessionVariable <String>`: Specifies a variable name to store the session information in. This can be useful when making multiple requests to the same server and you want to maintain the session state between requests.

- `-OutFile <String>`: Specifies the path where the downloaded file will be saved if the request results in a file being downloaded.

## Examples

### Downloading a file

```powershell
Invoke-WebRequest -Uri "https://example.com/file.zip" -OutFile "C:\path\to\save\file.zip"
```

This command will download the `file.zip` from `https://example.com/file.zip` and save it to the specified local path.

### Sending a POST request with data

```powershell
$body = @{
    key1 = "value1"
    key2 = "value2"
}
Invoke-WebRequest -Uri "https://example.com/api/endpoint" -Method POST -Body $body
```

This command will send a POST request to `https://example.com/api/endpoint` with the specified data in the body of the request.

## Notes

- The `Invoke-WebRequest` cmdlet requires PowerShell version 3 or later.
- For more information about this cmdlet, refer to the official [PowerShell documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-webrequest?view=powershell-7).
- 