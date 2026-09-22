import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:polycloud/models/calendar/event.dart';
import 'package:polycloud_client_calendar/polycloud_client_calendar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/calendar/calendar.dart';

part 'calendar_repository.g.dart';

/// Repository class for calendar app access.
class CalendarRepository {
  /// Override for the basepath to use for the API.
  final String? _basePathOverride;

  /// The client to talk to the core API.
  late final _client = PolycloudClientCalendar(
    basePathOverride: _basePathOverride,
    interceptors: kDebugMode
        ? [LogInterceptor(responseBody: true, requestBody: true)]
        : null,
  );

  CalendarRepository({this._basePathOverride});

  Map<String, String>? _buildHeaders(String? authToken) {
    if (authToken == null) {
      return null;
    }

    return {'Authorization': 'Bearer $authToken'};
  }

  /// Fetches information about a given from the API.
  Future<CalendarModel> fetchCalendar(
    String? authToken,
    String calendarId,
  ) async {
    final result = await _client.getApiControllerApi().getCalendarById(
      id: calendarId,
      headers: _buildHeaders(authToken),
    );
    if (result.statusCode != 200) {
      // TODO: Better error handling.
      throw Exception('Failed to get calendars');
    }

    return CalendarModel(
      result.data!.id!,
      result.data!.name!,
      result.data!.public!,
      result.data!.description,
    );
  }

  /// Fetches all calendars from the API.
  Future<List<CalendarModel>> fetchCalendars(String authToken) async {
    final result = await _client.getApiControllerApi().getCalendars(
      headers: _buildHeaders(authToken),
    );
    if (result.statusCode != 200) {
      // TODO: Better error handling.
      throw Exception('Failed to get calendars');
    }

    return result.data!.map((el) {
      return CalendarModel(el.id!, el.name!, el.public!, el.description);
    }).toList();
  }

  /// Fetches all calendars from the API.
  Future<List<EventModel>> fetchEvents(
    String? authToken,
    List<String> calendars,
  ) async {
    final result = await _client
        .getApiControllerApi()
        .getEventsForMultipleCalendars(
          calendarEventListingRequestDto: CalendarEventListingRequestDto((b) {
            b.calendars.replace(calendars);
          }),
          headers: _buildHeaders(authToken),
        );
    if (result.statusCode != 200) {
      // TODO: Better error handling.
      throw Exception('Failed to get events for [$calendars]');
    }

    return result.data!.map((el) {
      return EventModel(
        el.id!,
        null,
        el.title!,
        el.description,
        el.start!,
        el.end!,
        el.calendar!,
        el.allDay!,
      );
    }).toList();
  }

  /// Creates an event in the API.
  Future<EventModel> createEvent(String? authToken, EventModel model) async {
    final result = await _client.getApiControllerApi().createEvent(
      calendarId: model.calendar,
      eventCreationRequestDto: EventCreationRequestDto((b) {
        b.start = model.start.toUtc();
        b.end = model.end.toUtc();
        b.title = model.title;
        b.description = model.description;
        b.allDay = model.allDay;
        // TODO
        // b.place = model.place;
      }),
      headers: _buildHeaders(authToken),
    );

    // TODO: This should be 201
    if (result.statusCode != 200) {
      throw Exception('Failed to create event');
    }

    return EventModel(
      result.data!.id!,
      null,
      result.data!.title!,
      result.data!.description,
      result.data!.start!,
      result.data!.end!,
      result.data!.calendar!,
      result.data!.allDay!,
    );
  }
}

@riverpod
CalendarRepository calendarRepository(Ref ref) {
  return CalendarRepository();
}
