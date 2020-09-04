// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drive _$DriveFromJson(Map<String, dynamic> json) {
  return Drive(
    id: json['id'] as String,
    activities: (json['activities'] as List)
        ?.map((e) =>
            e == null ? null : ItemActivity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdBy: json['createdBy'] == null
        ? null
        : IdentitySet.fromJson(json['createdBy'] as Map<String, dynamic>),
    createdDateTime: json['createdDateTime'] as String,
    description: json['description'] as String,
    driveType: driveTypeFromJson(json['driveType'] as String),
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : DriveItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastModifiedBy: json['lastModifiedBy'] == null
        ? null
        : IdentitySet.fromJson(json['lastModifiedBy'] as Map<String, dynamic>),
    lastModifiedDateTime: json['lastModifiedDateTime'] == null
        ? null
        : DateTime.parse(json['lastModifiedDateTime'] as String),
    name: json['name'] as String,
    owner: json['owner'] == null
        ? null
        : IdentitySet.fromJson(json['owner'] as Map<String, dynamic>),
    quota: json['quota'] == null
        ? null
        : Quota.fromJson(json['quota'] as Map<String, dynamic>),
    root: json['root'] == null
        ? null
        : DriveItem.fromJson(json['root'] as Map<String, dynamic>),
    sharepointIds: json['sharepointIds'] == null
        ? null
        : SharePointIds.fromJson(json['sharepointIds'] as Map<String, dynamic>),
    special: (json['special'] as List)
        ?.map((e) =>
            e == null ? null : DriveItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] == null
        ? null
        : SystemFacet.fromJson(json['system'] as Map<String, dynamic>),
    webUrl: json['webUrl'] == null ? null : Uri.parse(json['webUrl'] as String),
  );
}

Map<String, dynamic> _$DriveToJson(Drive instance) => <String, dynamic>{
      'id': instance.id,
      'activities': instance.activities,
      'createdBy': instance.createdBy,
      'createdDateTime': instance.createdDateTime,
      'description': instance.description,
      'driveType': driveTypeToJson(instance.driveType),
      'items': instance.items,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
      'name': instance.name,
      'owner': instance.owner,
      'quota': instance.quota,
      'root': instance.root,
      'sharepointIds': instance.sharepointIds,
      'special': instance.special,
      'system': instance.system,
      'webUrl': instance.webUrl?.toString(),
    };
