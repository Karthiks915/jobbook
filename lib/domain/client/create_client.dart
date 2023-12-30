import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_client.freezed.dart';
part 'create_client.g.dart';

@freezed
class CreateClient with _$CreateClient {

  factory CreateClient({

    required String name,
    
  }) = _CreateClient;

  factory CreateClient.fromJson(Map<String, dynamic> json) => _$CreateClientFromJson(json);
}