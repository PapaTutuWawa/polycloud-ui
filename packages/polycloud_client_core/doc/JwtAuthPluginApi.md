# polycloud_client_core.api.JwtAuthPluginApi

## Load the API package
```dart
import 'package:polycloud_client_core/api.dart';
```

All URIs are relative to *http://localhost:9090*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refresh**](JwtAuthPluginApi.md#refresh) | **POST** /api/v1/auth/refresh | 
[**whoami**](JwtAuthPluginApi.md#whoami) | **GET** /api/v1/auth/whoami | 


# **refresh**
> TokenRefreshDto refresh(authorization)



### Example
```dart
import 'package:polycloud_client_core/api.dart';

final api = PolycloudClientCore().getJwtAuthPluginApi();
final String authorization = authorization_example; // String | 

try {
    final response = api.refresh(authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling JwtAuthPluginApi->refresh: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 

### Return type

[**TokenRefreshDto**](TokenRefreshDto.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoami**
> WhoAmIDto whoami()



### Example
```dart
import 'package:polycloud_client_core/api.dart';

final api = PolycloudClientCore().getJwtAuthPluginApi();

try {
    final response = api.whoami();
    print(response);
} on DioException catch (e) {
    print('Exception when calling JwtAuthPluginApi->whoami: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhoAmIDto**](WhoAmIDto.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

