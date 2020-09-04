// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoMeta _$PhotoMetaFromJson(Map<String, dynamic> json) {
  return PhotoMeta(
    cameraMake: json['cameraMake'] as String,
    cameraModel: json['cameraModel'] as String,
    exposureDenominator: (json['exposureDenominator'] as num)?.toDouble(),
    exposureNumerator: (json['exposureNumerator'] as num)?.toDouble(),
    fNumber: (json['fNumber'] as num)?.toDouble(),
    focalLength: (json['focalLength'] as num)?.toDouble(),
    iso: json['iso'] as int,
    takenDateTime: json['takenDateTime'] as String,
  );
}

Map<String, dynamic> _$PhotoMetaToJson(PhotoMeta instance) => <String, dynamic>{
      'cameraMake': instance.cameraMake,
      'cameraModel': instance.cameraModel,
      'exposureDenominator': instance.exposureDenominator,
      'exposureNumerator': instance.exposureNumerator,
      'fNumber': instance.fNumber,
      'focalLength': instance.focalLength,
      'iso': instance.iso,
      'takenDateTime': instance.takenDateTime,
    };
