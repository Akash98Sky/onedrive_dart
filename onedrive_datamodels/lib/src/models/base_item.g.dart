// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseItem _$BaseItemFromJson(Map<String, dynamic> json) {
  return BaseItem(
    id: json['id'] as String,
    createdBy: json['createdBy'] == null
        ? null
        : IdentitySet.fromJson(json['createdBy'] as Map<String, dynamic>),
    createdDateTime: json['createdDateTime'] == null
        ? null
        : DateTime.parse(json['createdDateTime'] as String),
    description: json['description'] as String,
    eTag: json['eTag'] as String,
    lastModifiedBy: json['lastModifiedBy'] == null
        ? null
        : IdentitySet.fromJson(json['lastModifiedBy'] as Map<String, dynamic>),
    lastModifiedDateTime: json['lastModifiedDateTime'] == null
        ? null
        : DateTime.parse(json['lastModifiedDateTime'] as String),
    name: json['name'] as String,
    parentReference: json['parentReference'] == null
        ? null
        : IdentitySet.fromJson(json['parentReference'] as Map<String, dynamic>),
    webUrl: json['webUrl'] == null ? null : Uri.parse(json['webUrl'] as String),
  );
}

Map<String, dynamic> _$BaseItemToJson(BaseItem instance) => <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'createdDateTime': instance.createdDateTime?.toIso8601String(),
      'description': instance.description,
      'eTag': instance.eTag,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
      'name': instance.name,
      'parentReference': instance.parentReference,
      'webUrl': instance.webUrl?.toString(),
    };
