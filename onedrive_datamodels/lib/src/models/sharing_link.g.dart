// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sharing_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharingLink _$SharingLinkFromJson(Map<String, dynamic> json) {
  return SharingLink(
    application: json['application'] == null
        ? null
        : Identity.fromJson(json['application'] as Map<String, dynamic>),
    type: shareTypeFromJson(json['type'] as String),
    scope: shareScopeFromJson(json['scope'] as String),
    webHtml: json['webHtml'] as String,
    webUrl: json['webUrl'] as String,
  );
}

Map<String, dynamic> _$SharingLinkToJson(SharingLink instance) =>
    <String, dynamic>{
      'application': instance.application,
      'type': shareTypeToJson(instance.type),
      'scope': shareScopeToJson(instance.scope),
      'webHtml': instance.webHtml,
      'webUrl': instance.webUrl,
    };
