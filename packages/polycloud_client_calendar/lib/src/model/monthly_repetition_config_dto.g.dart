// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_repetition_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MonthlyRepetitionConfigDto extends MonthlyRepetitionConfigDto {
  @override
  final bool? sameDay;
  @override
  final BuiltList<int>? weekdays;
  @override
  final DateTime? repeatStarts;

  factory _$MonthlyRepetitionConfigDto([
    void Function(MonthlyRepetitionConfigDtoBuilder)? updates,
  ]) => (MonthlyRepetitionConfigDtoBuilder()..update(updates))._build();

  _$MonthlyRepetitionConfigDto._({
    this.sameDay,
    this.weekdays,
    this.repeatStarts,
  }) : super._();
  @override
  MonthlyRepetitionConfigDto rebuild(
    void Function(MonthlyRepetitionConfigDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MonthlyRepetitionConfigDtoBuilder toBuilder() =>
      MonthlyRepetitionConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyRepetitionConfigDto &&
        sameDay == other.sameDay &&
        weekdays == other.weekdays &&
        repeatStarts == other.repeatStarts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sameDay.hashCode);
    _$hash = $jc(_$hash, weekdays.hashCode);
    _$hash = $jc(_$hash, repeatStarts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonthlyRepetitionConfigDto')
          ..add('sameDay', sameDay)
          ..add('weekdays', weekdays)
          ..add('repeatStarts', repeatStarts))
        .toString();
  }
}

class MonthlyRepetitionConfigDtoBuilder
    implements
        Builder<MonthlyRepetitionConfigDto, MonthlyRepetitionConfigDtoBuilder>,
        RepetitionConfigDtoBuilder {
  _$MonthlyRepetitionConfigDto? _$v;

  bool? _sameDay;
  bool? get sameDay => _$this._sameDay;
  set sameDay(covariant bool? sameDay) => _$this._sameDay = sameDay;

  ListBuilder<int>? _weekdays;
  ListBuilder<int> get weekdays => _$this._weekdays ??= ListBuilder<int>();
  set weekdays(covariant ListBuilder<int>? weekdays) =>
      _$this._weekdays = weekdays;

  DateTime? _repeatStarts;
  DateTime? get repeatStarts => _$this._repeatStarts;
  set repeatStarts(covariant DateTime? repeatStarts) =>
      _$this._repeatStarts = repeatStarts;

  MonthlyRepetitionConfigDtoBuilder() {
    MonthlyRepetitionConfigDto._defaults(this);
  }

  MonthlyRepetitionConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sameDay = $v.sameDay;
      _weekdays = $v.weekdays?.toBuilder();
      _repeatStarts = $v.repeatStarts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MonthlyRepetitionConfigDto other) {
    _$v = other as _$MonthlyRepetitionConfigDto;
  }

  @override
  void update(void Function(MonthlyRepetitionConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonthlyRepetitionConfigDto build() => _build();

  _$MonthlyRepetitionConfigDto _build() {
    _$MonthlyRepetitionConfigDto _$result;
    try {
      _$result =
          _$v ??
          _$MonthlyRepetitionConfigDto._(
            sameDay: sameDay,
            weekdays: _weekdays?.build(),
            repeatStarts: repeatStarts,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weekdays';
        _weekdays?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MonthlyRepetitionConfigDto',
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
