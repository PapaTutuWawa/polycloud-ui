# polycloud_client_core.api.CoreApiControllerApi

## Load the API package
```dart
import 'package:polycloud_client_core/api.dart';
```

All URIs are relative to *http://localhost:9090*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apps**](CoreApiControllerApi.md#apps) | **GET** /api/v1/apps | 
[**authMechanisms**](CoreApiControllerApi.md#authmechanisms) | **GET** /api/v1/public/auth/mechanisms | 
[**health**](CoreApiControllerApi.md#health) | **GET** /api/v1/public/health | 


# **apps**
> EnabledAppsDto apps()



### Example
```dart
import 'package:polycloud_client_core/api.dart';

final api = PolycloudClientCore().getCoreApiControllerApi();

try {
    final response = api.apps();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CoreApiControllerApi->apps: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EnabledAppsDto**](EnabledAppsDto.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authMechanisms**
> AuthMechanismsDto authMechanisms()



### Example
```dart
import 'package:polycloud_client_core/api.dart';

final api = PolycloudClientCore().getCoreApiControllerApi();

try {
    final response = api.authMechanisms();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CoreApiControllerApi->authMechanisms: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthMechanismsDto**](AuthMechanismsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **health**
> HealthDto health()



### Example
```dart
import 'package:polycloud_client_core/api.dart';

final api = PolycloudClientCore().getCoreApiControllerApi();

try {
    final response = api.health();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CoreApiControllerApi->health: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthDto**](HealthDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

