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
    final calendarViewModel = ref.watch(
      calendarViewModelProvider(CalendarAccess(initialCalendar, public)),
    );
    if (public) {
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

    // TODO: Move the sidebar into its own widget.
    return AuthenticatedFrame(
      sidebar: Padding(
        padding: const EdgeInsets.all(10),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const EdgeInsetsGeometry.only(
                      left: 10,
                      right: 10,
                      top: 10,
                    ),
                    child: Text(
                      "Calendars",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),

                  IconButton(icon: Icon(Icons.add), onPressed: () {}),
                ],
              ),

              ...calendarViewModel.when(
                data: (state) => state.calendars.map(
                  (calendarModel) => ListTile(
                    title: Text(calendarModel.name),
                    leading: state.calendar?.id == calendarModel.id
                        ? DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.purple,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsGeometry.all(8),
                              child: Icon(Icons.calendar_today),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsetsGeometry.all(8),
                            child: Icon(Icons.calendar_today),
                          ),
                    onTap: () {
                      ref
                          .read(
                            calendarViewModelProvider(
                              CalendarAccess(initialCalendar, public),
                            ).notifier,
                          )
                          .loadCalendar(calendarModel.id);
                    },
                  ),
                ),
                loading: () => [Container()],
                error: (_, _) => [Text('Failed to load calendars')],
              ),

              Divider(),

              calendarViewModel.when(
                data: (state) => Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(state.calendar?.description ?? ''),
                ),
                loading: () => Container(),
                error: (_, _) => Container(),
              ),
            ],
          ),
        ),
      ),
      child: calendar,
    );
  }
}
