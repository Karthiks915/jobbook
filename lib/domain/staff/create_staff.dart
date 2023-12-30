import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_staff.freezed.dart';
part 'create_staff.g.dart';

@freezed
class CreateStaff with _$CreateStaff {

  factory CreateStaff({
    required String name,
  }) = _CreateStaff;

  factory CreateStaff.fromJson(Map<String, dynamic> json) => _$CreateStaffFromJson(json);
}