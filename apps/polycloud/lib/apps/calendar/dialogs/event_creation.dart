import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polycloud/apps/calendar/widgets/range_picker.dart';
import 'package:polycloud/models/calendar/calendar.dart';

/// Data class containing all the required information for creating an event.
class EventCreationData {
  /// The event's title.
  final String title;

  /// The event's description.
  final String? description;

  /// Is the event an all-day event?
  final bool allDay;

  /// The time range of the event.
  final TimeRange range;

  /// The calendar in which to create the event.
  final CalendarModel calendar;

  const EventCreationData(
    this.title,
    this.description,
    this.allDay,
    this.range,
    this.calendar,
  );
}

/// A dialog that asks the user everything we need to create a calendar event.
class EventCreationDialog extends ConsumerStatefulWidget {
  /// The selectable list of calendars.
  final List<CalendarModel> calendars;

  const EventCreationDialog({required this.calendars, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EventCreationDialogState();
}

class _EventCreationDialogState extends ConsumerState<EventCreationDialog> {
  /// Is the event an all-day event?
  bool _allDay = false;

  /// Time range for the event.
  TimeRange? _timeRange;

  /// The selected calendar.
  CalendarModel? _calendarModel;

  /// Controller for the title field.
  final TextEditingController _titleController = TextEditingController();

  /// Controller for the description field.
  final TextEditingController _descriptionController = TextEditingController();

  /// The form.
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      constraints: BoxConstraints(maxWidth: 460, minHeight: 280),
      child: Padding(
        padding: const EdgeInsetsGeometry.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Create event",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),

              SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _titleController,
                      validator: (value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Event title cannot be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Event title',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 16),
                child: DropdownMenuFormField<CalendarModel>(
                  expandedInsets: EdgeInsets.zero,
                  enableSearch: false,
                  enableFilter: false,
                  keyboardType: .none,
                  onSaved: (value) => _calendarModel = value!,
                  dropdownMenuEntries: widget.calendars
                      .map(
                        (el) => DropdownMenuEntry<CalendarModel>(
                          value: el,
                          label: el.name,
                        ),
                      )
                      .toList(),
                  initialSelection: widget.calendars.first,
                ),
              ),

              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text('All day'),
                    Switch(
                      value: _allDay,
                      onChanged: (bool value) {
                        setState(() {
                          _allDay = value;
                        });
                      },
                    ),
                  ],
                ),
              ),

              RangePicker(
                allDay: _allDay,
                onSave: (range) => _timeRange = range,
              ),

              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _descriptionController,
                        minLines: 3,
                        maxLines: 6,
                        decoration: InputDecoration(
                          labelText: 'Description',
                          alignLabelWithHint: true,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(),

              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: .end,
                  spacing: 16,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        _formKey.currentState!.save();

                        final description =
                            _descriptionController.text.trim().isEmpty
                            ? null
                            : _descriptionController.text;
                        Navigator.of(context).pop(
                          EventCreationData(
                            _titleController.text,
                            description,
                            _allDay,
                            _timeRange!,
                            _calendarModel!,
                          ),
                        );
                      },
                      child: Text('Create event'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
