// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_job.freezed.dart';
part 'create_job.g.dart';

@freezed
class CreateJob with _$CreateJob {
  factory CreateJob({
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'building_name') required String buildingName,
  }) = _CreateJob;

  factory CreateJob.fromJson(Map<String, dynamic> json) =>
      _$CreateJobFromJson(json);
}
