// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return _Staff.fromJson(json);
}

/// @nodoc
mixin _$Staff {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at_timestamp')
  DateTime get createdAtTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAtTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res, Staff>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'created_at_timestamp') DateTime createdAtTimestamp,
      @JsonKey(name: 'updated_at') DateTime? updatedAtTimestamp});
}

/// @nodoc
class _$StaffCopyWithImpl<$Res, $Val extends Staff>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAtTimestamp = null,
    Object? updatedAtTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAtTimestamp: null == createdAtTimestamp
          ? _value.createdAtTimestamp
          : createdAtTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAtTimestamp: freezed == updatedAtTimestamp
          ? _value.updatedAtTimestamp
          : updatedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$_StaffCopyWith(_$_Staff value, $Res Function(_$_Staff) then) =
      __$$_StaffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'created_at_timestamp') DateTime createdAtTimestamp,
      @JsonKey(name: 'updated_at') DateTime? updatedAtTimestamp});
}

/// @nodoc
class __$$_StaffCopyWithImpl<$Res> extends _$StaffCopyWithImpl<$Res, _$_Staff>
    implements _$$_StaffCopyWith<$Res> {
  __$$_StaffCopyWithImpl(_$_Staff _value, $Res Function(_$_Staff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAtTimestamp = null,
    Object? updatedAtTimestamp = freezed,
  }) {
    return _then(_$_Staff(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAtTimestamp: null == createdAtTimestamp
          ? _value.createdAtTimestamp
          : createdAtTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAtTimestamp: freezed == updatedAtTimestamp
          ? _value.updatedAtTimestamp
          : updatedAtTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Staff implements _Staff {
  _$_Staff(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_at_timestamp') required this.createdAtTimestamp,
      @JsonKey(name: 'updated_at') this.updatedAtTimestamp});

  factory _$_Staff.fromJson(Map<String, dynamic> json) =>
      _$$_StaffFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at_timestamp')
  final DateTime createdAtTimestamp;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAtTimestamp;

  @override
  String toString() {
    return 'Staff(id: $id, name: $name, createdAtTimestamp: $createdAtTimestamp, updatedAtTimestamp: $updatedAtTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Staff &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAtTimestamp, createdAtTimestamp) ||
                other.createdAtTimestamp == createdAtTimestamp) &&
            (identical(other.updatedAtTimestamp, updatedAtTimestamp) ||
                other.updatedAtTimestamp == updatedAtTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, createdAtTimestamp, updatedAtTimestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      __$$_StaffCopyWithImpl<_$_Staff>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffToJson(
      this,
    );
  }
}

abstract class _Staff implements Staff {
  factory _Staff(
          {required final String id,
          required final String name,
          @JsonKey(name: 'created_at_timestamp')
          required final DateTime createdAtTimestamp,
          @JsonKey(name: 'updated_at') final DateTime? updatedAtTimestamp}) =
      _$_Staff;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$_Staff.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at_timestamp')
  DateTime get createdAtTimestamp;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAtTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      throw _privateConstructorUsedError;
}
