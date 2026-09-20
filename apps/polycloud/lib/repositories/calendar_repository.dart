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
      return CalendarModel(el.id!, el.name!, el.public!);
    }).toList();
  }

  /// Fetches all calendars from the API.
  Future<List<EventModel>> fetchEvents(
    String? authToken,
    String calendarId,
  ) async {
    final result = await _client.getApiControllerApi().getEvents(
      calendarId: calendarId,
      headers: _buildHeaders(authToken),
    );
    if (result.statusCode != 200) {
      // TODO: Better error handling.
      throw Exception('Failed to get events for [$calendarId]');
    }

    return result.data!.map((el) {
      return EventModel(el.id!, el.title!, el.start!, el.end!);
    }).toList();
  }
}

@riverpod
CalendarRepository calendarRepository(Ref ref) {
  return CalendarRepository();
}
