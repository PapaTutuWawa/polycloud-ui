// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_info_dto_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecurringInfoDtoConfig extends RecurringInfoDtoConfig {
  @override
  final OneOf oneOf;

  factory _$RecurringInfoDtoConfig([
    void Function(RecurringInfoDtoConfigBuilder)? updates,
  ]) => (RecurringInfoDtoConfigBuilder()..update(updates))._build();

  _$RecurringInfoDtoConfig._({required this.oneOf}) : super._();
  @override
  RecurringInfoDtoConfig rebuild(
    void Function(RecurringInfoDtoConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecurringInfoDtoConfigBuilder toBuilder() =>
      RecurringInfoDtoConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecurringInfoDtoConfig && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RecurringInfoDtoConfig',
    )..add('oneOf', oneOf)).toString();
  }
}

class RecurringInfoDtoConfigBuilder
    implements Builder<RecurringInfoDtoConfig, RecurringInfoDtoConfigBuilder> {
  _$RecurringInfoDtoConfig? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  RecurringInfoDtoConfigBuilder() {
    RecurringInfoDtoConfig._defaults(this);
  }

  RecurringInfoDtoConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecurringInfoDtoConfig other) {
    _$v = other as _$RecurringInfoDtoConfig;
  }

  @override
  void update(void Function(RecurringInfoDtoConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecurringInfoDtoConfig build() => _build();

  _$RecurringInfoDtoConfig _build() {
    final _$result =
        _$v ??
        _$RecurringInfoDtoConfig._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'RecurringInfoDtoConfig',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
