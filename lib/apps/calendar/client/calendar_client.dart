import 'package:dio/dio.dart';
import 'package:polycloud/apps/calendar/models/CalendarModel.dart';

import '../models/EventModel.dart';

class CalendarClient {
  CalendarClient(this.baseUrl);

  /// Base URL for the polycloud instance.
  final String baseUrl;

  final Dio dio = Dio();

  Future<List<Event>> fetchEvents(String id) async {
    final resp = await dio.get("$baseUrl/api/apps/calendar/calendar/$id/events");
    if (resp.statusCode != 200) {
      return [];
    }

    final data = (resp.data as List<dynamic>)
      .map((el) => el as Map<dynamic, dynamic>)
      .map((el) => el.cast<String, dynamic>());

    return data
        .map((el) => Event(
          el["title"]! as String,
          DateTime.parse(el["start"]! as String),
          DateTime.parse(el["end"]! as String),
        ))
        .toList();
  }

  Future<CalendarModel?> fetchCalendar(String id) async {
    final resp = await dio.get("$baseUrl/api/apps/calendar/calendar/$id");
    if (resp.statusCode != 200) {
      return null;
    }

    final data = (resp.data as Map<dynamic, dynamic>)
        .cast<String, dynamic>();

    return CalendarModel(data["name"]! as String);
  }
}