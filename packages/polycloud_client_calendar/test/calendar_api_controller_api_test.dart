import 'package:test/test.dart';
import 'package:polycloud_client_calendar/polycloud_client_calendar.dart';


/// tests for CalendarApiControllerApi
void main() {
  final instance = PolycloudClientCalendar().getCalendarApiControllerApi();

  group(CalendarApiControllerApi, () {
    // Creates an event.
    //
    //Future<EventDto> createEvent(String calendarId, EventCreationRequestDto eventCreationRequestDto) async
    test('test createEvent', () async {
      // TODO
    });

    // Deletes a calendar.
    //
    //Future deleteCalendar(String calendarId) async
    test('test deleteCalendar', () async {
      // TODO
    });

    // Deletes an event.
    //
    //Future deleteEvent(String calendarId, String eventId) async
    test('test deleteEvent', () async {
      // TODO
    });

    // Gets a calendar by its ID.
    //
    //Future<CalendarDto> getCalendarById(String id) async
    test('test getCalendarById', () async {
      // TODO
    });

    // Returns a list of all calendars that this user owns.
    //
    //Future<BuiltList<CalendarDto>> getCalendars() async
    test('test getCalendars', () async {
      // TODO
    });

    // Lists events in multiple calendars.
    //
    //Future<BuiltList<EventDto>> getEventsForMultipleCalendars(int start, int end, String tz, CalendarEventListingRequestDto calendarEventListingRequestDto) async
    test('test getEventsForMultipleCalendars', () async {
      // TODO
    });

    // Patches a calendar.
    //
    //Future<CalendarDto> patchCalendar(String calendarId, CalendarDto calendarDto) async
    test('test patchCalendar', () async {
      // TODO
    });

    // Updates an event.
    //
    //Future<EventDto> patchEvent(String calendarId, EventDto eventDto) async
    test('test patchEvent', () async {
      // TODO
    });

    // Creates a calendar.
    //
    //Future<CalendarDto> postCalendar(CalendarCreationRequestDto calendarCreationRequestDto) async
    test('test postCalendar', () async {
      // TODO
    });

  });
}
