// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarDto extends CalendarDto {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? owner;
  @override
  final String? color;
  @override
  final bool? public;

  factory _$CalendarDto([void Function(CalendarDtoBuilder)? updates]) =>
      (CalendarDtoBuilder()..update(updates))._build();

  _$CalendarDto._({
    this.id,
    this.name,
    this.description,
    this.owner,
    this.color,
    this.public,
  }) : super._();
  @override
  CalendarDto rebuild(void Function(CalendarDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarDtoBuilder toBuilder() => CalendarDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarDto &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner == other.owner &&
        color == other.color &&
        public == other.public;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalendarDto')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner', owner)
          ..add('color', color)
          ..add('public', public))
        .toString();
  }
}

class CalendarDtoBuilder implements Builder<CalendarDto, CalendarDtoBuilder> {
  _$CalendarDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  CalendarDtoBuilder() {
    CalendarDto._defaults(this);
  }

  CalendarDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _owner = $v.owner;
      _color = $v.color;
      _public = $v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarDto other) {
    _$v = other as _$CalendarDto;
  }

  @override
  void update(void Function(CalendarDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarDto build() => _build();

  _$CalendarDto _build() {
    final _$result =
        _$v ??
        _$CalendarDto._(
          id: id,
          name: name,
          description: description,
          owner: owner,
          color: color,
          public: public,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
