import 'package:flutter_test/flutter_test.dart';
import 'package:polycloud/apps/calendar/widgets/range_picker.dart';

void main() {
  group('TimeRange tests', () {
    test('Test week computation', () {
      final now = DateTime(2026, 9, 26);
      final week = TimeRange.week(now);
      expect(week.start.day, 21);
      expect(week.start.month, 9);
      expect(week.start.year, 2026);
      expect(week.end.day, 27);
      expect(week.end.month, 9);
      expect(week.end.year, 2026);
    });
  });
}
