// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FolderMeta _$FolderMetaFromJson(Map<String, dynamic> json) {
  return FolderMeta(
    childCount: json['childCount'] as int,
    view: json['view'] == null
        ? null
        : FolderView.fromJson(json['view'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FolderMetaToJson(FolderMeta instance) =>
    <String, dynamic>{
      'childCount': instance.childCount,
      'view': instance.view,
    };
