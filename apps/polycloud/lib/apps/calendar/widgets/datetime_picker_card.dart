import 'package:flutter/material.dart';

/// Widget that allows picking a time and a date.
class DateTimePickerCard extends StatefulWidget {
  /// The initial datetime to show
  final DateTime initialDateTime;

  /// The earliest date that can be picked. If null, then there is no
  /// restriction.
  final DateTime? firstDate;

  /// The latest date that can be picked. If null, then there is no
  /// restriction.
  final DateTime? lastDate;

  /// Should the picker only allow selecting the date and not time time?
  final bool dateOnly;

  /// Callback for when the datetime has changed.
  final void Function(DateTime) onChange;

  const DateTimePickerCard({
    required this.initialDateTime,
    required this.onChange,
    required this.dateOnly,
    this.firstDate,
    this.lastDate,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _DateTimePickerCardState();
}

class _DateTimePickerCardState extends State<DateTimePickerCard> {
  /// The currently selected date and time.
  late DateTime _selection;

  @override
  void initState() {
    super.initState();
    _selection = widget.initialDateTime;
  }

  String _zeroPad(int i) {
    if (i < 10) {
      return '0$i';
    }
    return i.toString();
  }

  String _formatedDate() {
    return '${_zeroPad(_selection.day)}.${_zeroPad(_selection.month)}.${_selection.year}';
  }

  String _formatedTime() {
    return '${_zeroPad(_selection.hour)}:${_zeroPad(_selection.minute)}';
  }

  void _emitDateTime() {
    if (widget.dateOnly) {
      widget.onChange(_selection.copyWith(hour: 0, minute: 0, second: 0));
    } else {
      widget.onChange(_selection);
    }
  }

  @override
  void didUpdateWidget(DateTimePickerCard prev) {
    if (prev.dateOnly != widget.dateOnly) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _emitDateTime();
      });
    }

    super.didUpdateWidget(prev);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: .hardEdge,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
                final result = await showDatePicker(
                  context: context,
                  initialDate: _selection,
                  firstDate: widget.firstDate ?? DateTime(1),
                  lastDate: widget.lastDate ?? DateTime(9999),
                );
                if (result == null) {
                  return;
                }

                setState(() {
                  _selection = _selection.copyWith(
                    year: result.year,
                    month: result.month,
                    day: result.day,
                  );
                });
                _emitDateTime();
              },
              child: SizedBox(
                height: 48,
                child: Align(
                  alignment: .centerLeft,
                  child: Padding(
                    padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
                    child: Text(_formatedDate()),
                  ),
                ),
              ),
            ),
          ),
          if (!widget.dateOnly)
            InkWell(
              onTap: () async {
                final result = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(_selection),
                );
                if (result == null) {
                  return;
                }

                setState(() {
                  _selection = _selection.copyWith(
                    hour: result.hour,
                    minute: result.minute,
                  );
                });
                _emitDateTime();
              },
              child: SizedBox(
                height: 48,
                child: Align(
                  alignment: .centerLeft,
                  child: Padding(
                    padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
                    child: Text(_formatedTime()),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
