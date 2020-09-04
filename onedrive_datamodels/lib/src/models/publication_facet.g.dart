// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publication_facet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicationFacet _$PublicationFacetFromJson(Map<String, dynamic> json) {
  return PublicationFacet(
    level: publicationLevelFromJson(json['level'] as String),
    versionId: json['versionId'] as String,
  );
}

Map<String, dynamic> _$PublicationFacetToJson(PublicationFacet instance) =>
    <String, dynamic>{
      'level': publicationLevelToJson(instance.level),
      'versionId': instance.versionId,
    };
