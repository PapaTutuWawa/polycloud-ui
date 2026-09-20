import 'package:flutter/material.dart';
import 'package:polycloud/apps/calendar/client/calendar_client.dart';
import 'package:polycloud/apps/calendar/event_details.dart';
import 'package:polycloud/core/widgets/authenticated_frame.dart';
import 'package:polycloud/core/widgets/frame.dart';
import 'package:polycloud/core/widgets/frame_header.dart';
import 'package:polycloud_ui_hazmat/calendar/models/calendar_event.dart';
import 'package:polycloud_ui_hazmat/calendar/widget/calendar_view.dart';

class CalendarApp extends StatefulWidget {
  const CalendarApp({super.key, required this.public, this.initialCalendar});

  final bool public;
  final String? initialCalendar;

  @override
  State<StatefulWidget> createState() => _CalenderAppState();
}

class _CalenderAppState extends State<CalendarApp> {
  final client = CalendarClient("http://localhost:9090");
  List<CalendarEvent> _events = [];
  bool _loading = true;
  String? _calendarName = null;
  CalendarEvent? _selectedEvent = null;

  @override
  void initState() {
    super.initState();
    if (widget.initialCalendar != null) {
      _asyncInit();
    }
  }

  Future<void> _asyncInit() async {
    final events = await client.fetchEvents(widget.initialCalendar!);
    final calendar = await client.fetchCalendar(widget.initialCalendar!);
    print("Found ${events.length} events");
    final eventsCount = events.length;
    setState(() {
      _events = events.map((el) => CalendarEvent(
          title: el.name,
          start: el.start,
          end: el.end,
      )).toList();
      _calendarName = calendar!.name;
      _loading = false;
    });
    debugPrint('Found $eventsCount events');
  }

  Widget _renderCalendar(BuildContext context) {
    if (_loading) {
      return Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Row(
      children: [
        Expanded(
          child: CalendarView(
            date: DateTime.now(),
            events: _events,
            onEventTapped: (event) {
              print("Tapped ${event.start} - ${event.end}");
              setState(() {
                _selectedEvent = event;
              });
            },
            onCreateEvent: (event) async {
              setState(() {
                _events.add(
                  CalendarEvent(
                      title: "Test event",
                      start: event.start,
                      end: event.end,
                      allDay: event.allDay
                  ),
                );
              });
            },
          ),
        ),

        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: SizedBox(
            width: _selectedEvent != null ? 400 : 0,
            child: _selectedEvent == null
              ? Container()
              : EventDetails(
                event: _selectedEvent!,
                onClose: () {
                  setState(() {
                    _selectedEvent = null;
                  });
                },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final calendar = _renderCalendar(context);
    if (widget.public) {
      return Frame(
        header: FrameHeader(
          title: _calendarName ?? '',
        ),
        child: calendar,
      );
    }

    return AuthenticatedFrame(
      child: calendar,
    );
  }
}
