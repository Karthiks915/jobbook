// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateJob _$CreateJobFromJson(Map<String, dynamic> json) {
  return _CreateJob.fromJson(json);
}

/// @nodoc
mixin _$CreateJob {
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_name')
  String get buildingName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateJobCopyWith<CreateJob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateJobCopyWith<$Res> {
  factory $CreateJobCopyWith(CreateJob value, $Res Function(CreateJob) then) =
      _$CreateJobCopyWithImpl<$Res, CreateJob>;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'building_name') String buildingName});
}

/// @nodoc
class _$CreateJobCopyWithImpl<$Res, $Val extends CreateJob>
    implements $CreateJobCopyWith<$Res> {
  _$CreateJobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? buildingName = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateJobCopyWith<$Res> implements $CreateJobCopyWith<$Res> {
  factory _$$_CreateJobCopyWith(
          _$_CreateJob value, $Res Function(_$_CreateJob) then) =
      __$$_CreateJobCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'building_name') String buildingName});
}

/// @nodoc
class __$$_CreateJobCopyWithImpl<$Res>
    extends _$CreateJobCopyWithImpl<$Res, _$_CreateJob>
    implements _$$_CreateJobCopyWith<$Res> {
  __$$_CreateJobCopyWithImpl(
      _$_CreateJob _value, $Res Function(_$_CreateJob) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? buildingName = null,
  }) {
    return _then(_$_CreateJob(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateJob implements _CreateJob {
  _$_CreateJob(
      {@JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'building_name') required this.buildingName});

  factory _$_CreateJob.fromJson(Map<String, dynamic> json) =>
      _$$_CreateJobFromJson(json);

  @override
  @JsonKey(name: 'client_id')
  final String clientId;
  @override
  @JsonKey(name: 'building_name')
  final String buildingName;

  @override
  String toString() {
    return 'CreateJob(clientId: $clientId, buildingName: $buildingName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateJob &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, buildingName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateJobCopyWith<_$_CreateJob> get copyWith =>
      __$$_CreateJobCopyWithImpl<_$_CreateJob>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateJobToJson(
      this,
    );
  }
}

abstract class _CreateJob implements CreateJob {
  factory _CreateJob(
          {@JsonKey(name: 'client_id') required final String clientId,
          @JsonKey(name: 'building_name') required final String buildingName}) =
      _$_CreateJob;

  factory _CreateJob.fromJson(Map<String, dynamic> json) =
      _$_CreateJob.fromJson;

  @override
  @JsonKey(name: 'client_id')
  String get clientId;
  @override
  @JsonKey(name: 'building_name')
  String get buildingName;
  @override
  @JsonKey(ignore: true)
  _$$_CreateJobCopyWith<_$_CreateJob> get copyWith =>
      throw _privateConstructorUsedError;
}
