// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateClient _$CreateClientFromJson(Map<String, dynamic> json) {
  return _CreateClient.fromJson(json);
}

/// @nodoc
mixin _$CreateClient {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateClientCopyWith<CreateClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClientCopyWith<$Res> {
  factory $CreateClientCopyWith(
          CreateClient value, $Res Function(CreateClient) then) =
      _$CreateClientCopyWithImpl<$Res, CreateClient>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateClientCopyWithImpl<$Res, $Val extends CreateClient>
    implements $CreateClientCopyWith<$Res> {
  _$CreateClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateClientCopyWith<$Res>
    implements $CreateClientCopyWith<$Res> {
  factory _$$_CreateClientCopyWith(
          _$_CreateClient value, $Res Function(_$_CreateClient) then) =
      __$$_CreateClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CreateClientCopyWithImpl<$Res>
    extends _$CreateClientCopyWithImpl<$Res, _$_CreateClient>
    implements _$$_CreateClientCopyWith<$Res> {
  __$$_CreateClientCopyWithImpl(
      _$_CreateClient _value, $Res Function(_$_CreateClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CreateClient(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateClient implements _CreateClient {
  _$_CreateClient({required this.name});

  factory _$_CreateClient.fromJson(Map<String, dynamic> json) =>
      _$$_CreateClientFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateClient(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateClient &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateClientCopyWith<_$_CreateClient> get copyWith =>
      __$$_CreateClientCopyWithImpl<_$_CreateClient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateClientToJson(
      this,
    );
  }
}

abstract class _CreateClient implements CreateClient {
  factory _CreateClient({required final String name}) = _$_CreateClient;

  factory _CreateClient.fromJson(Map<String, dynamic> json) =
      _$_CreateClient.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateClientCopyWith<_$_CreateClient> get copyWith =>
      throw _privateConstructorUsedError;
}
