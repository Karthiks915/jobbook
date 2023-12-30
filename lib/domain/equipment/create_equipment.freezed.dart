// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateEquipment _$CreateEquipmentFromJson(Map<String, dynamic> json) {
  return _CreateEquipment.fromJson(json);
}

/// @nodoc
mixin _$CreateEquipment {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEquipmentCopyWith<CreateEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEquipmentCopyWith<$Res> {
  factory $CreateEquipmentCopyWith(
          CreateEquipment value, $Res Function(CreateEquipment) then) =
      _$CreateEquipmentCopyWithImpl<$Res, CreateEquipment>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateEquipmentCopyWithImpl<$Res, $Val extends CreateEquipment>
    implements $CreateEquipmentCopyWith<$Res> {
  _$CreateEquipmentCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateEquipmentCopyWith<$Res>
    implements $CreateEquipmentCopyWith<$Res> {
  factory _$$_CreateEquipmentCopyWith(
          _$_CreateEquipment value, $Res Function(_$_CreateEquipment) then) =
      __$$_CreateEquipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CreateEquipmentCopyWithImpl<$Res>
    extends _$CreateEquipmentCopyWithImpl<$Res, _$_CreateEquipment>
    implements _$$_CreateEquipmentCopyWith<$Res> {
  __$$_CreateEquipmentCopyWithImpl(
      _$_CreateEquipment _value, $Res Function(_$_CreateEquipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CreateEquipment(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateEquipment implements _CreateEquipment {
  _$_CreateEquipment({required this.name});

  factory _$_CreateEquipment.fromJson(Map<String, dynamic> json) =>
      _$$_CreateEquipmentFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateEquipment(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEquipment &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateEquipmentCopyWith<_$_CreateEquipment> get copyWith =>
      __$$_CreateEquipmentCopyWithImpl<_$_CreateEquipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateEquipmentToJson(
      this,
    );
  }
}

abstract class _CreateEquipment implements CreateEquipment {
  factory _CreateEquipment({required final String name}) = _$_CreateEquipment;

  factory _CreateEquipment.fromJson(Map<String, dynamic> json) =
      _$_CreateEquipment.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateEquipmentCopyWith<_$_CreateEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}
