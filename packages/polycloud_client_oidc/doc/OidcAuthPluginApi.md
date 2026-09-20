# polycloud_client_oidc.api.OidcAuthPluginApi

## Load the API package
```dart
import 'package:polycloud_client_oidc/api.dart';
```

All URIs are relative to *http://localhost:9090*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate**](OidcAuthPluginApi.md#authenticate) | **POST** /api/auth/oidc/authenticate | 
[**token**](OidcAuthPluginApi.md#token) | **POST** /api/auth/oidc/proxy/token | 


# **authenticate**
> AuthResult authenticate(authorization)



### Example
```dart
import 'package:polycloud_client_oidc/api.dart';

final api = PolycloudClientOidc().getOidcAuthPluginApi();
final String authorization = authorization_example; // String | 

try {
    final response = api.authenticate(authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OidcAuthPluginApi->authenticate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**AuthResult**](AuthResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **token**
> String token(all, empty)



### Example
```dart
import 'package:polycloud_client_oidc/api.dart';

final api = PolycloudClientOidc().getOidcAuthPluginApi();
final BuiltMap<String, String> all = Object; // BuiltMap<String, String> | 
final bool empty = true; // bool | 

try {
    final response = api.token(all, empty);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OidcAuthPluginApi->token: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **all** | [**BuiltMap&lt;String, String&gt;**](BuiltMap.md)|  | [optional] 
 **empty** | **bool**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

