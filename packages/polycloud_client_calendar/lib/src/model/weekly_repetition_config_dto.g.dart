// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_repetition_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeeklyRepetitionConfigDto extends WeeklyRepetitionConfigDto {
  @override
  final BuiltList<int>? weekdays;
  @override
  final bool? sameDay;
  @override
  final DateTime? repeatStarts;

  factory _$WeeklyRepetitionConfigDto([
    void Function(WeeklyRepetitionConfigDtoBuilder)? updates,
  ]) => (WeeklyRepetitionConfigDtoBuilder()..update(updates))._build();

  _$WeeklyRepetitionConfigDto._({
    this.weekdays,
    this.sameDay,
    this.repeatStarts,
  }) : super._();
  @override
  WeeklyRepetitionConfigDto rebuild(
    void Function(WeeklyRepetitionConfigDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WeeklyRepetitionConfigDtoBuilder toBuilder() =>
      WeeklyRepetitionConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeeklyRepetitionConfigDto &&
        weekdays == other.weekdays &&
        sameDay == other.sameDay &&
        repeatStarts == other.repeatStarts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weekdays.hashCode);
    _$hash = $jc(_$hash, sameDay.hashCode);
    _$hash = $jc(_$hash, repeatStarts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeeklyRepetitionConfigDto')
          ..add('weekdays', weekdays)
          ..add('sameDay', sameDay)
          ..add('repeatStarts', repeatStarts))
        .toString();
  }
}

class WeeklyRepetitionConfigDtoBuilder
    implements
        Builder<WeeklyRepetitionConfigDto, WeeklyRepetitionConfigDtoBuilder>,
        RepetitionConfigDtoBuilder {
  _$WeeklyRepetitionConfigDto? _$v;

  ListBuilder<int>? _weekdays;
  ListBuilder<int> get weekdays => _$this._weekdays ??= ListBuilder<int>();
  set weekdays(covariant ListBuilder<int>? weekdays) =>
      _$this._weekdays = weekdays;

  bool? _sameDay;
  bool? get sameDay => _$this._sameDay;
  set sameDay(covariant bool? sameDay) => _$this._sameDay = sameDay;

  DateTime? _repeatStarts;
  DateTime? get repeatStarts => _$this._repeatStarts;
  set repeatStarts(covariant DateTime? repeatStarts) =>
      _$this._repeatStarts = repeatStarts;

  WeeklyRepetitionConfigDtoBuilder() {
    WeeklyRepetitionConfigDto._defaults(this);
  }

  WeeklyRepetitionConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weekdays = $v.weekdays?.toBuilder();
      _sameDay = $v.sameDay;
      _repeatStarts = $v.repeatStarts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant WeeklyRepetitionConfigDto other) {
    _$v = other as _$WeeklyRepetitionConfigDto;
  }

  @override
  void update(void Function(WeeklyRepetitionConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeeklyRepetitionConfigDto build() => _build();

  _$WeeklyRepetitionConfigDto _build() {
    _$WeeklyRepetitionConfigDto _$result;
    try {
      _$result =
          _$v ??
          _$WeeklyRepetitionConfigDto._(
            weekdays: _weekdays?.build(),
            sameDay: sameDay,
            repeatStarts: repeatStarts,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weekdays';
        _weekdays?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WeeklyRepetitionConfigDto',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
