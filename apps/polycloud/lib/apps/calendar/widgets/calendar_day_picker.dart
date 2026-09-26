import 'package:flutter/material.dart';

/// Month names
const _monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

/// Callback function for a DateTime.
typedef DateTimeCallback = void Function(DateTime);

class _DayContainer extends StatelessWidget {
  /// The selected date.
  final DateTime selectedDate;

  /// When the day has been tapped.
  final VoidCallback onPressed;

  final Color textColor;

  /// The year this widget is representing.
  final int year;

  /// The month this widget is representing.
  final int month;

  /// The day this widget is representing.
  final int day;

  const _DayContainer({
    required this.selectedDate,
    required this.onPressed,
    required this.textColor,
    required this.year,
    required this.month,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration:
            selectedDate.year == year &&
                selectedDate.month == month &&
                selectedDate.day == day
            ? BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(28),
                color: Colors.pink,
              )
            : null,
        child: Center(
          child: Text(
            day.toString(),
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}

class CalendarDayPicker extends StatefulWidget {
  /// The initial date to show.
  final DateTime initialDate;

  /// Callback for when a date has been selected.
  final DateTimeCallback onSelected;

  const CalendarDayPicker({
    required this.initialDate,
    required this.onSelected,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => CalendarDatePickerState();
}

int _previousMonth(int year, int month) {
  if (month == 1) {
    return 12;
  }

  return month - 1;
}

int _previousYear(int year, int month) {
  if (month == 1) {
    return year - 1;
  }

  return year;
}

int _nextMonth(int year, int month) {
  if (month == 12) {
    return 1;
  }

  return month + 1;
}

int _nextYear(int year, int month) {
  if (month == 12) {
    return year + 1;
  }

  return year;
}

class CalendarDatePickerState extends State<CalendarDayPicker> {
  /// The selected date.
  late DateTime _selectedTime;

  /// The currently visible year.
  late int _visibleYear;

  /// The currently visible month.
  late int _visibleMonth;

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.initialDate;
    _visibleMonth = widget.initialDate.month;
    _visibleYear = widget.initialDate.year;
  }

  void _onSelected(DateTime dt) {
    setState(() {
      _selectedTime = dt;
      _visibleYear = _selectedTime.year;
      _visibleMonth = _selectedTime.month;
    });
    widget.onSelected(dt);
  }

  @override
  Widget build(BuildContext context) {
    final visibleMonth = DateTime(_visibleYear, _visibleMonth, 1);
    final prevMonth = _previousMonth(_visibleYear, _visibleMonth);
    final prevYear = _previousYear(_visibleYear, _visibleMonth);
    final previousDays = DateUtils.getDaysInMonth(prevYear, prevMonth);
    final startPadding = visibleMonth.weekday - 1;

    final firstRowPadding = List.generate(startPadding, (i) {
      return _DayContainer(
        selectedDate: _selectedTime,
        onPressed: () {
          setState(() {
            _onSelected(DateTime(prevYear, prevMonth, previousDays - i));
          });
        },
        textColor: Colors.grey,
        year: prevYear,
        month: prevMonth,
        day: previousDays - i,
      );
    }).reversed;
    final firstRow = List.generate(7 - startPadding + 1, (i) {
      return _DayContainer(
        selectedDate: _selectedTime,
        onPressed: () {
          _onSelected(visibleMonth.copyWith(day: i + 1));
        },
        textColor: Theme.of(context).textTheme.bodyMedium!.color!,
        year: _visibleYear,
        month: _visibleMonth,
        day: i + 1,
      );
    });

    final firstRowEnd = 7 - startPadding + 1;
    final currentMonthDays = DateUtils.getDaysInMonth(
      visibleMonth.year,
      visibleMonth.month,
    );
    final remainingDays = currentMonthDays - firstRowEnd;

    final rows = List.generate(remainingDays, (i) {
      return _DayContainer(
        selectedDate: _selectedTime,
        onPressed: () {
          _onSelected(visibleMonth.copyWith(day: firstRowEnd + i + 1));
        },
        textColor: Theme.of(context).textTheme.bodyMedium!.color!,
        year: _visibleYear,
        month: _visibleMonth,
        day: firstRowEnd + i + 1,
      );
    });
    final currentMonthFinalWeekday = visibleMonth
        .copyWith(day: currentMonthDays)
        .weekday;

    final finalRowPadding = List.generate(7 - currentMonthFinalWeekday, (i) {
      final nextMonth = _nextMonth(_visibleYear, _visibleMonth);
      final nextYear = _nextYear(_visibleYear, _visibleMonth);
      return _DayContainer(
        selectedDate: _selectedTime,
        onPressed: () {
          setState(() {
            _onSelected(DateTime(nextYear, nextMonth, i + 1));
          });
        },
        textColor: Colors.grey,
        year: nextYear,
        month: nextMonth,
        day: i + 1,
      );
    });

    return Card(
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        children: [
          Row(
            spacing: 16,
            children: [
              SizedBox(
                height: 32,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Material(
                    // TODO: Get this color from the theme
                    color: Colors.purple,
                    child: Row(
                      mainAxisSize: .min,
                      crossAxisAlignment: .stretch,
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(Icons.keyboard_arrow_left),
                          ),
                          onTap: () {
                            setState(() {
                              final prevVisibleMonth = _visibleMonth;
                              _visibleMonth = _previousMonth(
                                _visibleYear,
                                _visibleMonth,
                              );
                              _visibleYear = _previousYear(
                                _visibleYear,
                                prevVisibleMonth,
                              );
                            });
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(Icons.keyboard_arrow_right),
                          ),
                          onTap: () {
                            setState(() {
                              final prevVisibleMonth = _visibleMonth;
                              _visibleMonth = _nextMonth(
                                _visibleYear,
                                _visibleMonth,
                              );
                              _visibleYear = _nextYear(
                                _visibleYear,
                                prevVisibleMonth,
                              );
                            });
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(Icons.calendar_today),
                          ),
                          onTap: () {
                            final now = DateTime.now();
                            setState(() {
                              _visibleMonth = now.month;
                              _visibleYear = now.year;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                '${_monthNames[visibleMonth.month - 1]} ${visibleMonth.year}',
              ),
            ],
          ),

          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 7,
            children: [
              Center(child: Text("Mo")),
              Center(child: Text("Di")),
              Center(child: Text("Mi")),
              Center(child: Text("Do")),
              Center(child: Text("Fr")),
              Center(child: Text("Sa")),
              Center(child: Text("So")),

              ...firstRowPadding,
              ...firstRow,
              ...rows,
              ...finalRowPadding,
            ],
          ),
        ],
      ),
    );
  }
}
