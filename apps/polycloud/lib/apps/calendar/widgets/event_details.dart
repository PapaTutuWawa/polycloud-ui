import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/apps/calendar/dialogs/event_creation.dart';
import 'package:polycloud/apps/calendar/models/event.dart';
import 'package:polycloud/apps/calendar/viewmodels/calendar_viewmodel.dart';

/// Sidebar widget to display event details
class EventDetails extends ConsumerWidget {
  const EventDetails({
    required this.event,
    required this.onClose,
    required this.initialCalendars,
    required this.public,
    super.key,
  });

  /// The event to display.
  final EventModel event;

  final List<String>? initialCalendars;

  final bool public;

  /// Callback that is triggered when the close button is pressed.
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patchedCardMargin = EdgeInsets.symmetric(horizontal: 0, vertical: 8);

    return Material(
      child: Padding(
        padding: const EdgeInsetsGeometry.only(left: 24, right: 16),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 24),

            Row(
              children: [
                SelectableText(
                  event.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Spacer(),
                IconButton(onPressed: onClose, icon: Icon(Icons.close)),
              ],
            ),

            SizedBox(height: 4),

            Divider(),

            Row(
              spacing: 8,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    final calendarState = ref.read(
                      calendarViewModelProvider(
                        CalendarAccess(initialCalendars, public),
                      ),
                    );
                    final calendarViewModel = ref.read(
                      calendarViewModelProvider(
                        CalendarAccess(initialCalendars, public),
                      ).notifier,
                    );
                    final result = await showDialog(
                      context: context,
                      builder: (context) => EventCreationDialog(
                        calendars: calendarState.requireValue.calendars,
                        initialTimeRange: event.timeRange(),
                        initialAllDay: event.allDay,
                        initialTitle: event.title,
                        initialDescription: event.description,
                        initialCalendar: calendarState.requireValue.calendars
                            .firstWhere((el) => el.id == event.calendar),
                        buttonText: 'Update event',
                        titleText: 'Update Event',
                      ),
                    );
                    if (result == null) {
                      return;
                    }

                    await calendarViewModel.updateEvent(
                      result,
                      event.id,
                      event.calendar,
                    );
                  },
                  label: Text('Edit'),
                  icon: Icon(Icons.edit),
                ),
                FilledButton.icon(
                  onPressed: () async {
                    // TODO: Factor this dialog/functionality out into a separate file.
                    final result = await showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Delete Event'),
                        content: Text(
                          'Are you sure you want to delete the event "${event.title}"?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: Text('Cancel'),
                          ),
                        ],
                      ),
                    );
                    if (result == null || !result) {
                      return;
                    }

                    // Trigger the call to delete the event.
                    ref
                        .read(
                          calendarViewModelProvider(
                            CalendarAccess(initialCalendars, public),
                          ).notifier,
                        )
                        .deleteEvent(event);
                  },
                  label: Text('Delete'),
                  icon: Icon(Icons.delete),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                ),
              ],
            ),

            if (event.description != null)
              Padding(
                padding: patchedCardMargin.copyWith(top: 4),
                child: SelectableText(event.description!),
              ),

            Card(
              margin: patchedCardMargin,
              child: ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("Start"),
                subtitle: Text(event.start.toString()),
              ),
            ),

            Card(
              margin: patchedCardMargin,
              child: ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("End"),
                subtitle: Text(event.end.toString()),
              ),
            ),

            SizedBox(height: 8),

            if (event.participants.isNotEmpty)
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 4),
                child: Text(
                  "Participants",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),

            if (event.participants.isNotEmpty)
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: event.participants
                    .map(
                      (participant) => Chip(
                        avatar: Icon(Icons.person),
                        label: Text(participant),
                      ),
                    )
                    .toList(),
              ),

            SizedBox(height: 8),
            if (event.place != null)
              Card(
                margin: patchedCardMargin,
                child: ListTile(
                  leading: Icon(Icons.location_pin),
                  title: Text("Location"),
                  subtitle: Text(event.place!),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
