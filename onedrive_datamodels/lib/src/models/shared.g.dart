// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shared _$SharedFromJson(Map<String, dynamic> json) {
  return Shared(
    owner: json['owner'] == null
        ? null
        : IdentitySet.fromJson(json['owner'] as Map<String, dynamic>),
    scope: shareScopeFromJson(json['scope'] as String),
    sharedBy: json['sharedBy'] == null
        ? null
        : IdentitySet.fromJson(json['sharedBy'] as Map<String, dynamic>),
    sharedDateTime: json['sharedDateTime'] == null
        ? null
        : DateTime.parse(json['sharedDateTime'] as String),
  );
}

Map<String, dynamic> _$SharedToJson(Shared instance) => <String, dynamic>{
      'owner': instance.owner,
      'scope': shareScopeToJson(instance.scope),
      'sharedBy': instance.sharedBy,
      'sharedDateTime': instance.sharedDateTime?.toIso8601String(),
    };
