// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileMeta _$FileMetaFromJson(Map<String, dynamic> json) {
  return FileMeta(
    hashes: json['hashes'] == null
        ? null
        : Hashes.fromJson(json['hashes'] as Map<String, dynamic>),
    mimeType: json['mimeType'] as String,
    processingMetadata: json['processingMetadata'] as bool,
  );
}

Map<String, dynamic> _$FileMetaToJson(FileMeta instance) => <String, dynamic>{
      'hashes': instance.hashes,
      'mimeType': instance.mimeType,
      'processingMetadata': instance.processingMetadata,
    };
