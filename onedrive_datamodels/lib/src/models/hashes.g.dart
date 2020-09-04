// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hashes _$HashesFromJson(Map<String, dynamic> json) {
  return Hashes(
    crc32Hash: json['crc32Hash'] as String,
    sha1Hash: json['sha1Hash'] as String,
    quickXorHash: json['quickXorHash'] as String,
  );
}

Map<String, dynamic> _$HashesToJson(Hashes instance) => <String, dynamic>{
      'crc32Hash': instance.crc32Hash,
      'sha1Hash': instance.sha1Hash,
      'quickXorHash': instance.quickXorHash,
    };
