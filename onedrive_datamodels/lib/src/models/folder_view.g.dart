// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FolderView _$FolderViewFromJson(Map<String, dynamic> json) {
  return FolderView(
    sortBy: json['sortBy'] as String,
    sortOrder: json['sortOrder'] as String,
    viewType: json['viewType'] as String,
  );
}

Map<String, dynamic> _$FolderViewToJson(FolderView instance) =>
    <String, dynamic>{
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
      'viewType': instance.viewType,
    };
