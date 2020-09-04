import 'package:json_annotation/json_annotation.dart';

part 'geo_coordinates.g.dart';

/// The `GeoCoordinates` resource provides geographic coordinates and elevation
/// of a location based on metadata contained within the file. If a DriveItem
/// has a non-null location facet, the item represents a file with a known
/// location assocaited with it.
///
@JsonSerializable()
class GeoCoordinates {
  /// Optional. The altitude (height), in feet, above sea level for the item.
  final double altitude;

  /// Optional. The latitude, in decimal, for the item.
  final double latitude;

  /// Optional. The longitude, in decimal, for the item.
  final double longitude;

  GeoCoordinates({
    this.altitude,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toJson() => _$GeoCoordinatesToJson(this);

  factory GeoCoordinates.fromJson(Map<String, dynamic> json) =>
      _$GeoCoordinatesFromJson(json);

  @override
  String toString() => toJson().toString();
}
