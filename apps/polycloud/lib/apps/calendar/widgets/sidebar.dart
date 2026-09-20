import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../viewmodels/apps/calendar/calendar_viewmodel.dart';

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
      padding: const EdgeInsets.all(10),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).scaffoldBackgroundColor,
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
                    onPressed: () {},
                    child: Text('Create event'),
                  ),
                ),
              ],
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

                IconButton(icon: Icon(Icons.add), onPressed: () {}),
              ],
            ),

            ...calendarViewModel.when(
              skipLoadingOnReload: true,
              data: (state) => state.calendars.map(
                (calendarModel) {
                  final selected = state.selectedCalendars.contains(calendarModel.id);
                  return ListTile(
                    title: Text(calendarModel.name),
                    leading: Checkbox(
                      value: selected,
                      onChanged: (active) {
                        ref
                            .read(
                          calendarViewModelProvider(
                            CalendarAccess(initialCalendars, public),
                          ).notifier,
                        )
                            .toggleCalendarActive(calendarModel.id, active!);
                      },
                    ),
                    trailing: Row(
                      mainAxisSize: .min,
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        if (calendarModel.public)
                        IconButton(
                          icon: Icon(Icons.public),
                          onPressed: () async {
                            await ref
                                .read(
                              calendarViewModelProvider(
                                CalendarAccess(initialCalendars, public),
                              ).notifier,
                            ).copyCalendarLinkToClipboard(calendarModel.id);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Public URL copied to clipboard.'),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    onTap: () {},
                  );
                },
              ),
              loading: () => [Container()],
              error: (_, _) => [Text('Failed to load calendars')],
            ),

            Divider(),

            /*calendarViewModel.when(
              data: (state) => Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(state.calendar?.description ?? ''),
              ),
              loading: () => Container(),
              error: (_, _) => Container(),
            ),*/
          ],
        )
      ),
    );
  }
}