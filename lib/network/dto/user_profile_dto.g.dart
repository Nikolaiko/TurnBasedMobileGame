// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserProfileDto> _$userProfileDtoSerializer =
    new _$UserProfileDtoSerializer();

class _$UserProfileDtoSerializer
    implements StructuredSerializer<UserProfileDto> {
  @override
  final Iterable<Type> types = const [UserProfileDto, _$UserProfileDto];
  @override
  final String wireName = 'UserProfileDto';

  @override
  Iterable<Object> serialize(Serializers serializers, UserProfileDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserProfileDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserProfileDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserProfileDto extends UserProfileDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String password;

  factory _$UserProfileDto([void Function(UserProfileDtoBuilder) updates]) =>
      (new UserProfileDtoBuilder()..update(updates)).build();

  _$UserProfileDto._({this.id, this.name, this.password}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('UserProfileDto', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('UserProfileDto', 'name');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('UserProfileDto', 'password');
    }
  }

  @override
  UserProfileDto rebuild(void Function(UserProfileDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileDtoBuilder toBuilder() =>
      new UserProfileDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileDto &&
        id == other.id &&
        name == other.name &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserProfileDto')
          ..add('id', id)
          ..add('name', name)
          ..add('password', password))
        .toString();
  }
}

class UserProfileDtoBuilder
    implements Builder<UserProfileDto, UserProfileDtoBuilder> {
  _$UserProfileDto _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  UserProfileDtoBuilder();

  UserProfileDtoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserProfileDto;
  }

  @override
  void update(void Function(UserProfileDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserProfileDto build() {
    final _$result =
        _$v ?? new _$UserProfileDto._(id: id, name: name, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
