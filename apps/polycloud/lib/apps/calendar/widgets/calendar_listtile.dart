import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/apps/calendar/dialogs/calendar_creation.dart';
import 'package:polycloud/apps/calendar/models/calendar.dart';

import '../../../helpers/dialog.dart';
import '../viewmodels/calendar_viewmodel.dart';

class CalendarListTile extends ConsumerStatefulWidget {
  /// The calendar to display.
  final CalendarModel calendarModel;

  final List<String>? initialCalendars;

  final bool public;

  final bool selected;

  const CalendarListTile({
    required this.calendarModel,
    required this.initialCalendars,
    required this.public,
    required this.selected,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CalendarListTileState();
}

class _CalendarListTileState extends ConsumerState<CalendarListTile> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Select the calendar for extra information display
        ref
            .read(
              calendarViewModelProvider(
                CalendarAccess(widget.initialCalendars, widget.public),
              ).notifier,
            )
            .selectCalendar(widget.calendarModel);
      },
      onHover: (state) {
        setState(() {
          _hovering = state;
        });
      },
      child: Row(
        children: [
          Checkbox(
            value: widget.selected,
            fillColor: WidgetStateProperty.all(widget.calendarModel.color),
            onChanged: (active) {
              ref
                  .read(
                    calendarViewModelProvider(
                      CalendarAccess(widget.initialCalendars, widget.public),
                    ).notifier,
                  )
                  .toggleCalendarActive(widget.calendarModel.id, active!);
            },
          ),

          Expanded(child: Text(widget.calendarModel.name)),

          if (widget.calendarModel.public)
            IconButton(
              icon: Icon(Icons.public),
              onPressed: () async {
                await ref
                    .read(
                      calendarViewModelProvider(
                        CalendarAccess(widget.initialCalendars, widget.public),
                      ).notifier,
                    )
                    .copyCalendarLinkToClipboard(widget.calendarModel.id);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Public URL copied to clipboard.')),
                );
              },
            ),

          if (_hovering)
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: _deleteCalendar,
            ),

          if (_hovering)
            IconButton(icon: Icon(Icons.edit), onPressed: _editCalendar),
        ],
      ),
    );
  }

  Future<void> _editCalendar() async {
    final result = await showDialog<CalendarCreationData>(
      context: context,
      builder: (context) => CalendarCreationDialog(
        buttonText: 'Update calendar',
        titleText: 'Update Calendar',
        initialDescription: widget.calendarModel.description,
        initialName: widget.calendarModel.name,
        initialPublic: widget.calendarModel.public,
      ),
    );
    if (result == null) {
      return;
    }

    // TODO
  }

  Future<void> _deleteCalendar() async {
    final result = await confirm(
      context,
      'Delete Calendar',
      'Are you sure that you want to delete the calendar "${widget.calendarModel.name}"?',
      'Delete',
    );
    if (!result) {
      return;
    }

    await ref
        .read(
          calendarViewModelProvider(
            CalendarAccess(widget.initialCalendars, widget.public),
          ).notifier,
        )
        .deleteCalendar(widget.calendarModel.id);
  }
}
