// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserLoginDataDto> _$userLoginDataDtoSerializer =
    new _$UserLoginDataDtoSerializer();

class _$UserLoginDataDtoSerializer
    implements StructuredSerializer<UserLoginDataDto> {
  @override
  final Iterable<Type> types = const [UserLoginDataDto, _$UserLoginDataDto];
  @override
  final String wireName = 'UserLoginDataDto';

  @override
  Iterable<Object> serialize(Serializers serializers, UserLoginDataDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserLoginDataDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserLoginDataDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$UserLoginDataDto extends UserLoginDataDto {
  @override
  final String name;
  @override
  final String password;

  factory _$UserLoginDataDto(
          [void Function(UserLoginDataDtoBuilder) updates]) =>
      (new UserLoginDataDtoBuilder()..update(updates)).build();

  _$UserLoginDataDto._({this.name, this.password}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('UserLoginDataDto', 'name');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('UserLoginDataDto', 'password');
    }
  }

  @override
  UserLoginDataDto rebuild(void Function(UserLoginDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLoginDataDtoBuilder toBuilder() =>
      new UserLoginDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLoginDataDto &&
        name == other.name &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserLoginDataDto')
          ..add('name', name)
          ..add('password', password))
        .toString();
  }
}

class UserLoginDataDtoBuilder
    implements Builder<UserLoginDataDto, UserLoginDataDtoBuilder> {
  _$UserLoginDataDto _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  UserLoginDataDtoBuilder();

  UserLoginDataDtoBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLoginDataDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserLoginDataDto;
  }

  @override
  void update(void Function(UserLoginDataDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLoginDataDto build() {
    final _$result =
        _$v ?? new _$UserLoginDataDto._(name: name, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
