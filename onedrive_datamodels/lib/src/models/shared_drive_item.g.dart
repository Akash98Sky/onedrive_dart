// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_drive_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharedDriveItem _$SharedDriveItemFromJson(Map<String, dynamic> json) {
  return SharedDriveItem(
    id: json['id'] as String,
    name: json['name'] as String,
    owner: json['owner'] == null
        ? null
        : IdentitySet.fromJson(json['owner'] as Map<String, dynamic>),
    driveItem: json['driveItem'] == null
        ? null
        : DriveItem.fromJson(json['driveItem'] as Map<String, dynamic>),
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : DriveItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    list: json['list'] as Map<String, dynamic>,
    listItem: json['listItem'] == null
        ? null
        : ListItem.fromJson(json['listItem'] as Map<String, dynamic>),
    site: json['site'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SharedDriveItemToJson(SharedDriveItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'driveItem': instance.driveItem,
      'items': instance.items,
      'list': instance.list,
      'listItem': instance.listItem,
      'site': instance.site,
    };
