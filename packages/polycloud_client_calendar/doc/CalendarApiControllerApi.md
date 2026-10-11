# polycloud_client_calendar.api.CalendarApiControllerApi

## Load the API package
```dart
import 'package:polycloud_client_calendar/api.dart';
```

All URIs are relative to *http://localhost:9090*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEvent**](CalendarApiControllerApi.md#createevent) | **POST** /api/apps/calendar/calendar/{calendarId}/event | Creates an event.
[**deleteCalendar**](CalendarApiControllerApi.md#deletecalendar) | **DELETE** /api/apps/calendar/calendar/{calendarId} | Deletes a calendar.
[**deleteEvent**](CalendarApiControllerApi.md#deleteevent) | **DELETE** /api/apps/calendar/calendar/{calendarId}/event/{eventId} | Deletes an event.
[**getCalendarById**](CalendarApiControllerApi.md#getcalendarbyid) | **GET** /api/apps/calendar/calendar/{id} | Gets a calendar by its ID.
[**getCalendars**](CalendarApiControllerApi.md#getcalendars) | **GET** /api/apps/calendar/calendars | Returns a list of all calendars that this user owns.
[**getEventsForMultipleCalendars**](CalendarApiControllerApi.md#geteventsformultiplecalendars) | **POST** /api/apps/calendar/calendar/events | Lists events in multiple calendars.
[**patchCalendar**](CalendarApiControllerApi.md#patchcalendar) | **PATCH** /api/apps/calendar/calendar/{calendarId} | Patches a calendar.
[**patchEvent**](CalendarApiControllerApi.md#patchevent) | **PATCH** /api/apps/calendar/calendar/{calendarId}/event | Updates an event.
[**postCalendar**](CalendarApiControllerApi.md#postcalendar) | **POST** /api/apps/calendar/calendar | Creates a calendar.


# **createEvent**
> EventDto createEvent(calendarId, eventCreationRequestDto)

Creates an event.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final String calendarId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final EventCreationRequestDto eventCreationRequestDto = ; // EventCreationRequestDto | 

try {
    final response = api.createEvent(calendarId, eventCreationRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->createEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarId** | **String**|  | 
 **eventCreationRequestDto** | [**EventCreationRequestDto**](EventCreationRequestDto.md)|  | 

### Return type

[**EventDto**](EventDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendar**
> deleteCalendar(calendarId)

Deletes a calendar.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final String calendarId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteCalendar(calendarId);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->deleteCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEvent**
> deleteEvent(calendarId, eventId)

Deletes an event.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final String calendarId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String eventId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteEvent(calendarId, eventId);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->deleteEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarId** | **String**|  | 
 **eventId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarById**
> CalendarDto getCalendarById(id)

Gets a calendar by its ID.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getCalendarById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->getCalendarById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CalendarDto**](CalendarDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendars**
> BuiltList<CalendarDto> getCalendars()

Returns a list of all calendars that this user owns.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();

try {
    final response = api.getCalendars();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->getCalendars: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CalendarDto&gt;**](CalendarDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventsForMultipleCalendars**
> BuiltList<EventDto> getEventsForMultipleCalendars(start, end, tz, calendarEventListingRequestDto)

Lists events in multiple calendars.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final int start = 789; // int | 
final int end = 789; // int | 
final String tz = tz_example; // String | 
final CalendarEventListingRequestDto calendarEventListingRequestDto = ; // CalendarEventListingRequestDto | 

try {
    final response = api.getEventsForMultipleCalendars(start, end, tz, calendarEventListingRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->getEventsForMultipleCalendars: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**|  | 
 **end** | **int**|  | 
 **tz** | **String**|  | 
 **calendarEventListingRequestDto** | [**CalendarEventListingRequestDto**](CalendarEventListingRequestDto.md)|  | 

### Return type

[**BuiltList&lt;EventDto&gt;**](EventDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchCalendar**
> CalendarDto patchCalendar(calendarId, calendarDto)

Patches a calendar.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final String calendarId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CalendarDto calendarDto = ; // CalendarDto | 

try {
    final response = api.patchCalendar(calendarId, calendarDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->patchCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarId** | **String**|  | 
 **calendarDto** | [**CalendarDto**](CalendarDto.md)|  | 

### Return type

[**CalendarDto**](CalendarDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchEvent**
> EventDto patchEvent(calendarId, eventDto)

Updates an event.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final String calendarId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final EventDto eventDto = ; // EventDto | 

try {
    final response = api.patchEvent(calendarId, eventDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->patchEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarId** | **String**|  | 
 **eventDto** | [**EventDto**](EventDto.md)|  | 

### Return type

[**EventDto**](EventDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCalendar**
> CalendarDto postCalendar(calendarCreationRequestDto)

Creates a calendar.

### Example
```dart
import 'package:polycloud_client_calendar/api.dart';

final api = PolycloudClientCalendar().getCalendarApiControllerApi();
final CalendarCreationRequestDto calendarCreationRequestDto = ; // CalendarCreationRequestDto | 

try {
    final response = api.postCalendar(calendarCreationRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalendarApiControllerApi->postCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendarCreationRequestDto** | [**CalendarCreationRequestDto**](CalendarCreationRequestDto.md)|  | 

### Return type

[**CalendarDto**](CalendarDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

