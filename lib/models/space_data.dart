import 'package:json_annotation/json_annotation.dart';

part 'space_data.g.dart';

@JsonSerializable()
class SpaceData {
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

  final String date;
  final String explanation;
  final String media_type;
  final String service_version;
  final String title;
  final String url;
}
