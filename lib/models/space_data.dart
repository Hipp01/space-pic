import 'package:json_annotation/json_annotation.dart';

part 'space_data.g.dart';

@JsonSerializable()
class SpaceData {
  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: "explanation")
  final String explanation;

  @JsonKey(name: "media_type")
  final String media_type;

  @JsonKey(name: "service_version")
  final String service_version;

  @JsonKey(name: "title")
  final String title;

  @JsonKey(name: "url")
  final String url;

  SpaceData({
    required this.date,
    required this.explanation,
    required this.media_type,
    required this.service_version,
    required this.title,
    required this.url,
  });

  factory SpaceData.fromJson(Map<String, dynamic> json) =>
      _$SpaceDataFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceDataToJson(this);
}
