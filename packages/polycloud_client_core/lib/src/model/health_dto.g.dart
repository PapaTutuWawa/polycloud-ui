// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthDto extends HealthDto {
  @override
  final String? status;

  factory _$HealthDto([void Function(HealthDtoBuilder)? updates]) =>
      (HealthDtoBuilder()..update(updates))._build();

  _$HealthDto._({this.status}) : super._();
  @override
  HealthDto rebuild(void Function(HealthDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthDtoBuilder toBuilder() => HealthDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthDto && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthDto')..add('status', status))
        .toString();
  }
}

class HealthDtoBuilder implements Builder<HealthDto, HealthDtoBuilder> {
  _$HealthDto? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  HealthDtoBuilder() {
    HealthDto._defaults(this);
  }

  HealthDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthDto other) {
    _$v = other as _$HealthDto;
  }

  @override
  void update(void Function(HealthDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthDto build() => _build();

  _$HealthDto _build() {
    final _$result = _$v ??
        _$HealthDto._(
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
