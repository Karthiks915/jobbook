// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateStaff _$CreateStaffFromJson(Map<String, dynamic> json) {
  return _CreateStaff.fromJson(json);
}

/// @nodoc
mixin _$CreateStaff {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStaffCopyWith<CreateStaff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStaffCopyWith<$Res> {
  factory $CreateStaffCopyWith(
          CreateStaff value, $Res Function(CreateStaff) then) =
      _$CreateStaffCopyWithImpl<$Res, CreateStaff>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateStaffCopyWithImpl<$Res, $Val extends CreateStaff>
    implements $CreateStaffCopyWith<$Res> {
  _$CreateStaffCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateStaffCopyWith<$Res>
    implements $CreateStaffCopyWith<$Res> {
  factory _$$_CreateStaffCopyWith(
          _$_CreateStaff value, $Res Function(_$_CreateStaff) then) =
      __$$_CreateStaffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CreateStaffCopyWithImpl<$Res>
    extends _$CreateStaffCopyWithImpl<$Res, _$_CreateStaff>
    implements _$$_CreateStaffCopyWith<$Res> {
  __$$_CreateStaffCopyWithImpl(
      _$_CreateStaff _value, $Res Function(_$_CreateStaff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CreateStaff(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateStaff implements _CreateStaff {
  _$_CreateStaff({required this.name});

  factory _$_CreateStaff.fromJson(Map<String, dynamic> json) =>
      _$$_CreateStaffFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateStaff(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateStaff &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateStaffCopyWith<_$_CreateStaff> get copyWith =>
      __$$_CreateStaffCopyWithImpl<_$_CreateStaff>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateStaffToJson(
      this,
    );
  }
}

abstract class _CreateStaff implements CreateStaff {
  factory _CreateStaff({required final String name}) = _$_CreateStaff;

  factory _CreateStaff.fromJson(Map<String, dynamic> json) =
      _$_CreateStaff.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateStaffCopyWith<_$_CreateStaff> get copyWith =>
      throw _privateConstructorUsedError;
}
