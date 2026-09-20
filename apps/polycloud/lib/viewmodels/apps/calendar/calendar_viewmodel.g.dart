// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CalendarViewModel)
final calendarViewModelProvider = CalendarViewModelFamily._();

final class CalendarViewModelProvider
    extends $AsyncNotifierProvider<CalendarViewModel, CalendarState> {
  CalendarViewModelProvider._({
    required CalendarViewModelFamily super.from,
    required CalendarAccess super.argument,
  }) : super(
         retry: null,
         name: r'calendarViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$calendarViewModelHash();

  @override
  String toString() {
    return r'calendarViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CalendarViewModel create() => CalendarViewModel();

  @override
  bool operator ==(Object other) {
    return other is CalendarViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$calendarViewModelHash() => r'1b892c138ee8ec143d926ca14e1032e4776e10a8';

final class CalendarViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          CalendarViewModel,
          AsyncValue<CalendarState>,
          CalendarState,
          FutureOr<CalendarState>,
          CalendarAccess
        > {
  CalendarViewModelFamily._()
    : super(
        retry: null,
        name: r'calendarViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CalendarViewModelProvider call(CalendarAccess calendarAccess) =>
      CalendarViewModelProvider._(argument: calendarAccess, from: this);

  @override
  String toString() => r'calendarViewModelProvider';
}

abstract class _$CalendarViewModel extends $AsyncNotifier<CalendarState> {
  late final _$args = ref.$arg as CalendarAccess;
  CalendarAccess get calendarAccess => _$args;

  FutureOr<CalendarState> build(CalendarAccess calendarAccess);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<CalendarState>, CalendarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CalendarState>, CalendarState>,
              AsyncValue<CalendarState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
