// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetition_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RepetitionConfigDto extends RepetitionConfigDto {
  @override
  final bool? sameDay;
  @override
  final BuiltList<int>? weekdays;
  @override
  final DateTime? repeatStarts;

  factory _$RepetitionConfigDto([
    void Function(RepetitionConfigDtoBuilder)? updates,
  ]) => (RepetitionConfigDtoBuilder()..update(updates))._build();

  _$RepetitionConfigDto._({this.sameDay, this.weekdays, this.repeatStarts})
    : super._();
  @override
  RepetitionConfigDto rebuild(
    void Function(RepetitionConfigDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RepetitionConfigDtoBuilder toBuilder() =>
      RepetitionConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepetitionConfigDto &&
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
    return (newBuiltValueToStringHelper(r'RepetitionConfigDto')
          ..add('sameDay', sameDay)
          ..add('weekdays', weekdays)
          ..add('repeatStarts', repeatStarts))
        .toString();
  }
}

class RepetitionConfigDtoBuilder
    implements Builder<RepetitionConfigDto, RepetitionConfigDtoBuilder> {
  _$RepetitionConfigDto? _$v;

  bool? _sameDay;
  bool? get sameDay => _$this._sameDay;
  set sameDay(bool? sameDay) => _$this._sameDay = sameDay;

  ListBuilder<int>? _weekdays;
  ListBuilder<int> get weekdays => _$this._weekdays ??= ListBuilder<int>();
  set weekdays(ListBuilder<int>? weekdays) => _$this._weekdays = weekdays;

  DateTime? _repeatStarts;
  DateTime? get repeatStarts => _$this._repeatStarts;
  set repeatStarts(DateTime? repeatStarts) =>
      _$this._repeatStarts = repeatStarts;

  RepetitionConfigDtoBuilder() {
    RepetitionConfigDto._defaults(this);
  }

  RepetitionConfigDtoBuilder get _$this {
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
  void replace(RepetitionConfigDto other) {
    _$v = other as _$RepetitionConfigDto;
  }

  @override
  void update(void Function(RepetitionConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepetitionConfigDto build() => _build();

  _$RepetitionConfigDto _build() {
    _$RepetitionConfigDto _$result;
    try {
      _$result =
          _$v ??
          _$RepetitionConfigDto._(
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
          r'RepetitionConfigDto',
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
