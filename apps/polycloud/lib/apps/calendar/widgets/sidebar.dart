import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/apps/calendar/dialogs/calendar_creation.dart';
import 'package:polycloud/apps/calendar/dialogs/event_creation.dart';
import 'package:polycloud/apps/calendar/widgets/calendar_day_picker.dart';
import 'package:polycloud/apps/calendar/widgets/calendar_listtile.dart';

import '../viewmodels/calendar_viewmodel.dart';

/// Sidebar that is shown when the calendar is not public.
class CalendarSidebar extends ConsumerWidget {
  /// The initial calendar to show.
  final List<String>? initialCalendars;

  /// Whether the view is public.
  final bool public;

  const CalendarSidebar({
    required this.initialCalendars,
    required this.public,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendarViewModel = ref.watch(
      calendarViewModelProvider(CalendarAccess(initialCalendars, public)),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () async {
                        final result = await showDialog<EventCreationData?>(
                          context: context,
                          builder: (context) => EventCreationDialog(
                            calendars: calendarViewModel.requireValue.calendars,
                            buttonText: 'Create event',
                            titleText: 'Create Event',
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
                      child: Text('Create event'),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),

              CalendarDayPicker(
                initialDate: DateTime.now(),
                onSelected: (dt) {
                  ref
                      .read(
                        calendarViewModelProvider(
                          CalendarAccess(initialCalendars, public),
                        ).notifier,
                      )
                      .changeTimeRange(dt);
                },
              ),

              Row(
                mainAxisAlignment: .start,
                crossAxisAlignment: .center,
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

                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () async {
                      final result = await showDialog<CalendarCreationData>(
                        context: context,
                        builder: (context) => CalendarCreationDialog(
                          buttonText: 'Create calendar',
                          titleText: 'Create Calendar',
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
                          .createCalendar(result);
                    },
                  ),
                ],
              ),

              ...calendarViewModel.when(
                skipLoadingOnReload: true,
                data: (state) => state.calendars.map((calendarModel) {
                  final selected = state.selectedCalendars.contains(
                    calendarModel.id,
                  );
                  return CalendarListTile(
                    calendarModel: calendarModel,
                    initialCalendars: initialCalendars,
                    public: public,
                    selected: selected,
                  );
                }),
                loading: () => [Container()],
                error: (_, _) => [Text('Failed to load calendars')],
              ),

              Divider(),

              calendarViewModel.when(
                skipLoadingOnReload: true,
                data: (state) {
                  if (state.selectedCalendar?.description == null) {
                    return Container();
                  }

                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                    ),
                    child: SelectableText(state.selectedCalendar!.description!),
                  );
                },
                loading: () => Container(),
                error: (_, _) => Container(),
              ),

              calendarViewModel.when(
                skipLoadingOnReload: true,
                data: (state) {
                  if (state.selectedCalendar == null) {
                    return Container();
                  }

                  return ListTile(
                    leading: Icon(
                      state.selectedCalendar!.public
                          ? Icons.public
                          : Icons.public_off,
                    ),
                    title: Text(
                      state.selectedCalendar!.public ? 'Public' : 'Private',
                    ),
                  );
                },
                loading: () => Container(),
                error: (_, _) => Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
