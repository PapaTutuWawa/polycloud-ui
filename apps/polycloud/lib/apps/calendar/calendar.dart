import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/apps/calendar/widgets/range_picker.dart';
import 'package:polycloud/apps/calendar/widgets/sidebar.dart';
import 'package:polycloud/core/widgets/authenticated_frame.dart';
import 'package:polycloud/core/widgets/frame.dart';
import 'package:polycloud/core/widgets/frame_header.dart';
import 'package:polycloud/apps/calendar/viewmodels/calendar_viewmodel.dart';
import 'package:polycloud_ui_hazmat/calendar/models/calendar_event.dart';
import 'package:polycloud_ui_hazmat/calendar/widget/calendar_view.dart';

import 'dialogs/event_creation.dart';
import 'widgets/event_details.dart';

class CalendarApp extends ConsumerWidget {
  final bool public;
  final List<String>? initialCalendars;

  const CalendarApp({super.key, required this.public, this.initialCalendars});

  Widget _renderCalendar(BuildContext context, WidgetRef ref) {
    final calendarViewModelState = ref.watch(
      calendarViewModelProvider(CalendarAccess(initialCalendars, public)),
    );

    return calendarViewModelState.when(
      skipLoadingOnReload: true,
      data: (state) {
        return Column(
          children: [
            SizedBox(
              height: 4,
              child: calendarViewModelState.isLoading
                  ? LinearProgressIndicator()
                  : null,
            ),

            Expanded(
              child: Row(
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
                              allDay: el.allDay,
                            ),
                          )
                          .toList(),
                      onEventTapped: (event) {
                        final eventModel = state.events.firstWhere(
                          (el) => el.id == event.id,
                        );
                        ref
                            .read(
                              calendarViewModelProvider(
                                CalendarAccess(initialCalendars, public),
                              ).notifier,
                            )
                            .selectEvent(eventModel);
                      },
                      onCreateEvent: (event) async {
                        final result = await showDialog<EventCreationData?>(
                          context: context,
                          builder: (context) => EventCreationDialog(
                            calendars:
                                calendarViewModelState.requireValue.calendars,
                            initialTimeRange: TimeRange(event.start, event.end),
                            initialAllDay: event.allDay,
                          ),
                        );
                        if (result == null) {
                          return;
                        }

                        ref
                            .read(
                              calendarViewModelProvider(
                                CalendarAccess(initialCalendars, public),
                              ).notifier,
                            )
                            .addEvent(result);
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
                                        CalendarAccess(
                                          initialCalendars,
                                          public,
                                        ),
                                      ).notifier,
                                    )
                                    .selectEvent(null);
                              },
                            ),
                    ),
                  ),
                ],
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
    final calendarViewModel = ref.watch(
      calendarViewModelProvider(CalendarAccess(initialCalendars, public)),
    );
    if (public) {
      return Scaffold(
        body: Frame(
          header: FrameHeader(
            title: calendarViewModel.when(
              loading: () => '...',
              data: (state) => state.calendars[0].name,
              error: (_, _) => '',
            ),
          ),
          child: calendar,
        ),
      );
    }

    return Scaffold(
      body: AuthenticatedFrame(
        sidebar: CalendarSidebar(
          initialCalendars: initialCalendars,
          public: public,
        ),
        child: calendar,
      ),
    );
  }
}
