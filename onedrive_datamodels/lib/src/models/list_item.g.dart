// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListItem _$ListItemFromJson(Map<String, dynamic> json) {
  return ListItem(
    id: json['id'] as String,
    contentType: json['contentType'] == null
        ? null
        : ContentTypeInfo.fromJson(json['contentType'] as Map<String, dynamic>),
    fields: json['fields'] == null
        ? null
        : FieldValueSet.fromJson(json['fields'] as Map<String, dynamic>),
    sharepointIds: json['sharepointIds'] == null
        ? null
        : SharePointIds.fromJson(json['sharepointIds'] as Map<String, dynamic>),
    activities: (json['activities'] as List)
        ?.map((e) =>
            e == null ? null : ItemActivity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    driveItem: json['driveItem'] == null
        ? null
        : DriveItem.fromJson(json['driveItem'] as Map<String, dynamic>),
    versions: (json['versions'] as List)
        ?.map((e) => e == null
            ? null
            : ListItemVersion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
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
    parentReference: json['parentReference'] == null
        ? null
        : ItemReference.fromJson(
            json['parentReference'] as Map<String, dynamic>),
    webUrl: json['webUrl'] == null ? null : Uri.parse(json['webUrl'] as String),
  );
}

Map<String, dynamic> _$ListItemToJson(ListItem instance) => <String, dynamic>{
      'id': instance.id,
      'contentType': instance.contentType,
      'fields': instance.fields,
      'sharepointIds': instance.sharepointIds,
      'activities': instance.activities,
      'driveItem': instance.driveItem,
      'versions': instance.versions,
      'name': instance.name,
      'createdBy': instance.createdBy,
      'createdDateTime': instance.createdDateTime?.toIso8601String(),
      'description': instance.description,
      'eTag': instance.eTag,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
      'parentReference': instance.parentReference,
      'webUrl': instance.webUrl?.toString(),
    };

ListItemVersion _$ListItemVersionFromJson(Map<String, dynamic> json) {
  return ListItemVersion(
    id: json['id'] as String,
    fields: json['fields'] == null
        ? null
        : FieldValueSet.fromJson(json['fields'] as Map<String, dynamic>),
    lastModifiedBy: json['lastModifiedBy'] == null
        ? null
        : IdentitySet.fromJson(json['lastModifiedBy'] as Map<String, dynamic>),
    lastModifiedDateTime: json['lastModifiedDateTime'] == null
        ? null
        : DateTime.parse(json['lastModifiedDateTime'] as String),
    published: json['published'] == null
        ? null
        : PublicationFacet.fromJson(json['published'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListItemVersionToJson(ListItemVersion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
      'published': instance.published,
    };
