import 'package:flutter/material.dart';
import 'package:polycloud_ui_hazmat/calendar/models/calendar_event.dart';

/// Sidebar widget to display event details
class EventDetails extends StatelessWidget {
  const EventDetails({
    required this.event,
    required this.onClose,
    super.key,
  });

  /// The event to display.
  final CalendarEvent event;

  /// Callback that is triggered when the close button is pressed.
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final patchedCardMargin = EdgeInsets.symmetric(
      horizontal: 0,
      vertical: 8,
    );

    return Material(
        child: Padding(
        padding: const EdgeInsetsGeometry.only(
          left: 24,
          right: 16,
        ),
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
                IconButton(
                  onPressed: onClose,
                  icon: Icon(Icons.close),
                ),
              ],
            ),

            SizedBox(height: 4),

            /*Card(
              margin: patchedCardMargin,
              child: ListTile(
                leading: Icon(Icons.article_outlined),
                subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              )
            ),*/

            Divider(),
            Padding(
              padding: patchedCardMargin.copyWith(top: 4),
              child: SelectableText(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
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

            Padding(
              padding: const EdgeInsetsGeometry.symmetric(
                vertical: 4,
              ),
              child: Text(
                "Participants",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: [
                Chip(
                  avatar: Icon(Icons.person),
                  label: Text("Person 1"),
                ),
                Chip(
                  avatar: Icon(Icons.person),
                  label: Text("Person 2"),
                ),
                Chip(
                  avatar: Icon(Icons.person),
                  label: Text("Person 3"),
                ),
              ],
            ),

            SizedBox(height: 8),
            Card(
              margin: patchedCardMargin,
              child: ListTile(
                leading: Icon(Icons.location_pin),
                title: Text("Location"),
                subtitle: Text("Domino's Pizza"),
              ),
            ),

            /*DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.purple,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "End",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    event.end.toIso8601String(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}