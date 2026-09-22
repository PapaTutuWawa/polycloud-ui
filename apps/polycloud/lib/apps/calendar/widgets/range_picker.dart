import 'package:flutter/material.dart';
import 'package:polycloud/apps/calendar/widgets/datetime_picker_card.dart';

import '../helpers.dart';

/// Data class holding a start and an end time.
class TimeRange {
  /// Start time.
  final DateTime start;

  /// End time.
  final DateTime end;

  const TimeRange(this.start, this.end);
}

/// Callback for when the save trigger is called.
typedef TimeRangeCallback = void Function(TimeRange);

class RangePicker extends StatefulWidget {
  /// Is the time picking for all day time ranges?
  final bool allDay;

  /// Callback function for when the TimeRange is to be saved.
  final TimeRangeCallback onSave;

  const RangePicker({super.key, required this.onSave, required this.allDay});

  @override
  State<StatefulWidget> createState() => _RangePickerState();
}

class _RangePickerState extends State<RangePicker> {
  /// Start time provided by the DateTime picker.
  late DateTime _start;

  /// End time provided by the DateTime picker.
  late DateTime _end;

  @override
  void initState() {
    super.initState();

    final now = DateTime.now();
    final n = (now.minute / 30).round();
    final minutes = n * 30 - now.minute;
    if (minutes > 0) {
      _start = now.add(Duration(minutes: minutes));
    } else {
      _start = now.subtract(Duration(minutes: minutes.abs()));
    }
    _end = _start.add(const Duration(minutes: 30));
  }

  @override
  Widget build(BuildContext context) {
    return FormField<TimeRange>(
      validator: (value) {
        if (value!.start.isAfter(value.end)) {
          return 'The start time must be before the end time';
        }
        return null;
      },
      initialValue: TimeRange(_start, _end),
      onSaved: (value) => widget.onSave(value!),
      builder: (state) => Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            spacing: 24,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text('Start'),
                    ),
                    DateTimePickerCard(
                      initialDateTime: _start,
                      lastDate: _end,
                      onChange: (value) {
                        final trigger = value != _start;
                        setState(() {
                          _start = value;
                        });

                        if (trigger) {
                          state.didChange(TimeRange(_start, _end));
                        }
                      },
                      dateOnly: widget.allDay,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text('End'),
                    ),
                    DateTimePickerCard(
                      initialDateTime: _end,
                      firstDate: _start,
                      onChange: (value) {
                        final trigger = value != _end;
                        setState(() {
                          _end = value;
                        });
                        if (trigger) {
                          state.didChange(TimeRange(_start, _end));
                        }
                      },
                      dateOnly: widget.allDay,
                    ),
                  ],
                ),
              ),
            ],
          ),

          Align(
            alignment: .centerLeft,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 200),
              child: SizedBox(
                height: state.hasError ? 20 : 0,
                child: Padding(
                  padding: const EdgeInsetsGeometry.only(top: 8, left: 16),
                  child: Text(
                    'End must be later than the start',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsetsGeometry.only(top: 16, bottom: 16),
            child: Row(
              spacing: 8,
              children: [
                Icon(Icons.access_time_outlined),
                Text(formatDateTimeDifference(_start, _end, widget.allDay)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
