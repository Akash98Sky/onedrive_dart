// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemReference _$ItemReferenceFromJson(Map<String, dynamic> json) {
  return ItemReference(
    id: json['id'] as String,
    driveId: json['driveId'] as String,
    driveType: driveTypeFromJson(json['driveType'] as String),
    listId: json['listId'] as String,
    name: json['name'] as String,
    path: json['path'] as String,
    shareId: json['shareId'] as String,
    sharepointIds: json['sharepointIds'] == null
        ? null
        : SharePointIds.fromJson(json['sharepointIds'] as Map<String, dynamic>),
    siteId: json['siteId'] as String,
  );
}

Map<String, dynamic> _$ItemReferenceToJson(ItemReference instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driveId': instance.driveId,
      'driveType': driveTypeToJson(instance.driveType),
      'listId': instance.listId,
      'name': instance.name,
      'path': instance.path,
      'shareId': instance.shareId,
      'sharepointIds': instance.sharepointIds,
      'siteId': instance.siteId,
    };
