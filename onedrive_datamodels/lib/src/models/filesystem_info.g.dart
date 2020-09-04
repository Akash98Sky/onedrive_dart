// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filesystem_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileSystemInfo _$FileSystemInfoFromJson(Map<String, dynamic> json) {
  return FileSystemInfo(
    createdDateTime: json['createdDateTime'] == null
        ? null
        : DateTime.parse(json['createdDateTime'] as String),
    lastAccessedDateTime: json['lastAccessedDateTime'] == null
        ? null
        : DateTime.parse(json['lastAccessedDateTime'] as String),
    lastModifiedDateTime: json['lastModifiedDateTime'] == null
        ? null
        : DateTime.parse(json['lastModifiedDateTime'] as String),
  );
}

Map<String, dynamic> _$FileSystemInfoToJson(FileSystemInfo instance) =>
    <String, dynamic>{
      'createdDateTime': instance.createdDateTime?.toIso8601String(),
      'lastAccessedDateTime': instance.lastAccessedDateTime?.toIso8601String(),
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
    };
