// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_creation_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarCreationRequestDto extends CalendarCreationRequestDto {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? color;
  @override
  final bool? public;

  factory _$CalendarCreationRequestDto([
    void Function(CalendarCreationRequestDtoBuilder)? updates,
  ]) => (CalendarCreationRequestDtoBuilder()..update(updates))._build();

  _$CalendarCreationRequestDto._({
    this.name,
    this.description,
    this.color,
    this.public,
  }) : super._();
  @override
  CalendarCreationRequestDto rebuild(
    void Function(CalendarCreationRequestDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CalendarCreationRequestDtoBuilder toBuilder() =>
      CalendarCreationRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarCreationRequestDto &&
        name == other.name &&
        description == other.description &&
        color == other.color &&
        public == other.public;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalendarCreationRequestDto')
          ..add('name', name)
          ..add('description', description)
          ..add('color', color)
          ..add('public', public))
        .toString();
  }
}

class CalendarCreationRequestDtoBuilder
    implements
        Builder<CalendarCreationRequestDto, CalendarCreationRequestDtoBuilder> {
  _$CalendarCreationRequestDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  CalendarCreationRequestDtoBuilder() {
    CalendarCreationRequestDto._defaults(this);
  }

  CalendarCreationRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _color = $v.color;
      _public = $v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarCreationRequestDto other) {
    _$v = other as _$CalendarCreationRequestDto;
  }

  @override
  void update(void Function(CalendarCreationRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarCreationRequestDto build() => _build();

  _$CalendarCreationRequestDto _build() {
    final _$result =
        _$v ??
        _$CalendarCreationRequestDto._(
          name: name,
          description: description,
          color: color,
          public: public,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
