// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecurringInfoDtoFrequencyEnum _$recurringInfoDtoFrequencyEnum_DAILY =
    const RecurringInfoDtoFrequencyEnum._('DAILY');
const RecurringInfoDtoFrequencyEnum _$recurringInfoDtoFrequencyEnum_WEEKLY =
    const RecurringInfoDtoFrequencyEnum._('WEEKLY');
const RecurringInfoDtoFrequencyEnum _$recurringInfoDtoFrequencyEnum_MONTHLY =
    const RecurringInfoDtoFrequencyEnum._('MONTHLY');
const RecurringInfoDtoFrequencyEnum _$recurringInfoDtoFrequencyEnum_YEARLY =
    const RecurringInfoDtoFrequencyEnum._('YEARLY');

RecurringInfoDtoFrequencyEnum _$recurringInfoDtoFrequencyEnumValueOf(
  String name,
) {
  switch (name) {
    case 'DAILY':
      return _$recurringInfoDtoFrequencyEnum_DAILY;
    case 'WEEKLY':
      return _$recurringInfoDtoFrequencyEnum_WEEKLY;
    case 'MONTHLY':
      return _$recurringInfoDtoFrequencyEnum_MONTHLY;
    case 'YEARLY':
      return _$recurringInfoDtoFrequencyEnum_YEARLY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RecurringInfoDtoFrequencyEnum>
_$recurringInfoDtoFrequencyEnumValues = BuiltSet<RecurringInfoDtoFrequencyEnum>(
  const <RecurringInfoDtoFrequencyEnum>[
    _$recurringInfoDtoFrequencyEnum_DAILY,
    _$recurringInfoDtoFrequencyEnum_WEEKLY,
    _$recurringInfoDtoFrequencyEnum_MONTHLY,
    _$recurringInfoDtoFrequencyEnum_YEARLY,
  ],
);

Serializer<RecurringInfoDtoFrequencyEnum>
_$recurringInfoDtoFrequencyEnumSerializer =
    _$RecurringInfoDtoFrequencyEnumSerializer();

class _$RecurringInfoDtoFrequencyEnumSerializer
    implements PrimitiveSerializer<RecurringInfoDtoFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DAILY': 'DAILY',
    'WEEKLY': 'WEEKLY',
    'MONTHLY': 'MONTHLY',
    'YEARLY': 'YEARLY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DAILY': 'DAILY',
    'WEEKLY': 'WEEKLY',
    'MONTHLY': 'MONTHLY',
    'YEARLY': 'YEARLY',
  };

  @override
  final Iterable<Type> types = const <Type>[RecurringInfoDtoFrequencyEnum];
  @override
  final String wireName = 'RecurringInfoDtoFrequencyEnum';

  @override
  Object serialize(
    Serializers serializers,
    RecurringInfoDtoFrequencyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RecurringInfoDtoFrequencyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RecurringInfoDtoFrequencyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RecurringInfoDto extends RecurringInfoDto {
  @override
  final RecurringInfoDtoFrequencyEnum? frequency;
  @override
  final RepetitionConfigDto? config;

  factory _$RecurringInfoDto([
    void Function(RecurringInfoDtoBuilder)? updates,
  ]) => (RecurringInfoDtoBuilder()..update(updates))._build();

  _$RecurringInfoDto._({this.frequency, this.config}) : super._();
  @override
  RecurringInfoDto rebuild(void Function(RecurringInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecurringInfoDtoBuilder toBuilder() =>
      RecurringInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecurringInfoDto &&
        frequency == other.frequency &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecurringInfoDto')
          ..add('frequency', frequency)
          ..add('config', config))
        .toString();
  }
}

class RecurringInfoDtoBuilder
    implements Builder<RecurringInfoDto, RecurringInfoDtoBuilder> {
  _$RecurringInfoDto? _$v;

  RecurringInfoDtoFrequencyEnum? _frequency;
  RecurringInfoDtoFrequencyEnum? get frequency => _$this._frequency;
  set frequency(RecurringInfoDtoFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  RepetitionConfigDtoBuilder? _config;
  RepetitionConfigDtoBuilder get config =>
      _$this._config ??= RepetitionConfigDtoBuilder();
  set config(RepetitionConfigDtoBuilder? config) => _$this._config = config;

  RecurringInfoDtoBuilder() {
    RecurringInfoDto._defaults(this);
  }

  RecurringInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _frequency = $v.frequency;
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecurringInfoDto other) {
    _$v = other as _$RecurringInfoDto;
  }

  @override
  void update(void Function(RecurringInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecurringInfoDto build() => _build();

  _$RecurringInfoDto _build() {
    _$RecurringInfoDto _$result;
    try {
      _$result =
          _$v ??
          _$RecurringInfoDto._(frequency: frequency, config: _config?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecurringInfoDto',
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
