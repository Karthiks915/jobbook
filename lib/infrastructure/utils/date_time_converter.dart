import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String dateString) {
    return DateTime.parse(dateString);
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime.toIso8601String();
  }
}
