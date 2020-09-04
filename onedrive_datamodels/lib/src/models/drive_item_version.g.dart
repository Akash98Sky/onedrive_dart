// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_item_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriveItemVersion _$DriveItemVersionFromJson(Map<String, dynamic> json) {
  return DriveItemVersion(
    id: json['id'] as String,
    lastModifiedBy: json['lastModifiedBy'] == null
        ? null
        : IdentitySet.fromJson(json['lastModifiedBy'] as Map<String, dynamic>),
    lastModifiedDateTime: json['lastModifiedDateTime'] == null
        ? null
        : DateTime.parse(json['lastModifiedDateTime'] as String),
    publication: json['publication'] == null
        ? null
        : PublicationFacet.fromJson(
            json['publication'] as Map<String, dynamic>),
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$DriveItemVersionToJson(DriveItemVersion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
      'publication': instance.publication,
      'size': instance.size,
    };
