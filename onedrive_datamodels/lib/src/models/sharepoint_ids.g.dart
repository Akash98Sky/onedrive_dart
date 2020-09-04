// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sharepoint_ids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharePointIds _$SharePointIdsFromJson(Map<String, dynamic> json) {
  return SharePointIds(
    listId: json['listId'] as String,
    listItemId: json['listItemId'] as String,
    listItemUniqueId: json['listItemUniqueId'] as String,
    siteId: json['siteId'] as String,
    siteUrl:
        json['siteUrl'] == null ? null : Uri.parse(json['siteUrl'] as String),
    tenantId: json['tenantId'] as String,
    webId: json['webId'] as String,
  );
}

Map<String, dynamic> _$SharePointIdsToJson(SharePointIds instance) =>
    <String, dynamic>{
      'listId': instance.listId,
      'listItemId': instance.listItemId,
      'listItemUniqueId': instance.listItemUniqueId,
      'siteId': instance.siteId,
      'siteUrl': instance.siteUrl?.toString(),
      'tenantId': instance.tenantId,
      'webId': instance.webId,
    };
