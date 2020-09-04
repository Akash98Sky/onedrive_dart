// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoCoordinates _$GeoCoordinatesFromJson(Map<String, dynamic> json) {
  return GeoCoordinates(
    altitude: (json['altitude'] as num)?.toDouble(),
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$GeoCoordinatesToJson(GeoCoordinates instance) =>
    <String, dynamic>{
      'altitude': instance.altitude,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
