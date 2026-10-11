const _weekdays = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
];

/// Format a duration [duration] into a string showing the approximate duration
/// in natural language.
String formatDuration(Duration duration) {
  final minutes = duration.inMinutes;
  if (minutes < 60) {
    return '$minutes minutes';
  }

  // TODO: Round to the nearest 0.5h
  final hours = (minutes / 60).round();
  if (hours < 24) {
    return '$hours hours';
  }

  // TODO: Round to the nearest 0.5d
  final days = (hours / 24).round();
  if (days < 7) {
    return '$days days';
  }

  final weeks = (days / 7).round();
  return '$weeks weeks';
}

/// Formats the difference between two DateTime objects as a human readable
/// approximate string.
/// [allDay] is a flag that controls some special logic that sets [end]'s
/// hours to 24 to allow the correct times to be displayed.
String formatDateTimeDifference(DateTime start, DateTime end, bool allDay) {
  final end_ = allDay ? end.copyWith(hour: 24) : end;
  return formatDuration(end_.difference(start));
}

/// Zero-pads an integer [i] to always make it a two-character string.
String zeroPad(int i) {
  if (i < 10) {
    return '0$i';
  }
  return i.toString();
}

/// Formats a DateTime [dt] into a nice string. [allDay] decides whether to show
/// the time component (false) or not (true).
String formatDateTime(DateTime dt, bool allDay) {
  final date = '${zeroPad(dt.day)}.${zeroPad(dt.month)}.${dt.year}';
  if (allDay) {
    return date;
  }
  return '$date ${zeroPad(dt.hour)}:${zeroPad(dt.minute)}';
}

/// Converts a day of the week index (1- 7) to their human-readable name.
String weekdayIntToName(int idx) {
  return _weekdays[idx - 1];
}

/// Converts an integer into a "counter", like "1st", "2nd", ...
String intToCounterSuffixed(int i) {
  switch (i) {
    case 1:
      return "1st";
    case 2:
      return "2nd";
    case 3:
      return "3rd";
    default:
      return "${i}th";
  }
}