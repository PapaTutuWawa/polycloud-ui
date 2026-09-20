import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/core/widgets/authenticated_frame.dart';
import 'package:polycloud/core/widgets/frame.dart';
import 'package:polycloud/core/widgets/frame_header.dart';
import 'package:polycloud/viewmodels/apps/calendar/calendar_viewmodel.dart';
import 'package:polycloud_ui_hazmat/calendar/models/calendar_event.dart';
import 'package:polycloud_ui_hazmat/calendar/widget/calendar_view.dart';

import 'event_details.dart';

class CalendarApp extends ConsumerWidget {
  final bool public;
  final String? initialCalendar;

  const CalendarApp({super.key, required this.public, this.initialCalendar});

  Widget _renderCalendar(BuildContext context, WidgetRef ref) {
    final calendarViewModel = ref.watch(
      calendarViewModelProvider(CalendarAccess(initialCalendar, public)),
    );

    return calendarViewModel.when(
      data: (state) {
        return Row(
          children: [
            Expanded(
              child: CalendarView(
                date: DateTime.now(),
                events: state.events
                    .map(
                      (el) => CalendarEvent(
                        id: el.id,
                        title: el.title,
                        start: el.start,
                        end: el.end,
                      ),
                    )
                    .toList(),
                onEventTapped: (event) {
                  print("Tapped ${event.start} - ${event.end}");
                  final eventModel = state.events.firstWhere(
                    (el) => el.id == event.id,
                  );
                  ref
                      .read(
                        calendarViewModelProvider(
                          CalendarAccess(initialCalendar, public),
                        ).notifier,
                      )
                      .selectEvent(eventModel);
                },
                onCreateEvent: (event) async {
                  // TODO: Implement adding an event.
                  /*setState(() {
                    _events.add(
                      CalendarEvent(
                          title: "Test event",
                          start: event.start,
                          end: event.end,
                          allDay: event.allDay
                      ),
                    );
                  });*/
                },
              ),
            ),

            AnimatedSize(
              duration: const Duration(milliseconds: 200),
              child: SizedBox(
                width: state.selectedEvent != null ? 400 : 0,
                child: state.selectedEvent == null
                    ? Container()
                    : EventDetails(
                        event: state.selectedEvent!,
                        onClose: () {
                          ref
                              .read(
                                calendarViewModelProvider(
                                  CalendarAccess(initialCalendar, public),
                                ).notifier,
                              )
                              .selectEvent(null);
                        },
                      ),
              ),
            ),
          ],
        );
      },
      error: (e, st) {
        return Text("Error: $e");
      },
      loading: () {
        return Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = _renderCalendar(context, ref);
    if (public) {
      final calendarViewModel = ref.watch(
        calendarViewModelProvider(CalendarAccess(initialCalendar, public)),
      );

      return Frame(
        header: FrameHeader(
          title: calendarViewModel.when(
            loading: () => '...',
            data: (state) => state.calendar?.name ?? '',
            error: (_, _) => '',
          ),
        ),
        child: calendar,
      );
    }

    return AuthenticatedFrame(child: calendar);
  }
}
