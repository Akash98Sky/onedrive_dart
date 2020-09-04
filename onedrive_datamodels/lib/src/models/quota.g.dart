// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quota _$QuotaFromJson(Map<String, dynamic> json) {
  return Quota(
    deleted: json['deleted'] as int,
    fileCount: json['fileCount'] as int,
    remaining: json['remaining'] as int,
    state: quotaStateFromJson(json['state'] as String),
    total: json['total'] as int,
    used: json['used'] as int,
  );
}

Map<String, dynamic> _$QuotaToJson(Quota instance) => <String, dynamic>{
      'deleted': instance.deleted,
      'fileCount': instance.fileCount,
      'remaining': instance.remaining,
      'state': quotaStateToJson(instance.state),
      'total': instance.total,
      'used': instance.used,
    };
