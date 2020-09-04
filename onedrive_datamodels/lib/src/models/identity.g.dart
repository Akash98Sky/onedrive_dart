// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdentitySet _$IdentitySetFromJson(Map<String, dynamic> json) {
  return IdentitySet(
    application: json['application'] == null
        ? null
        : Identity.fromJson(json['application'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Identity.fromJson(json['device'] as Map<String, dynamic>),
    group: json['group'] == null
        ? null
        : Identity.fromJson(json['group'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : Identity.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IdentitySetToJson(IdentitySet instance) =>
    <String, dynamic>{
      'application': instance.application,
      'device': instance.device,
      'group': instance.group,
      'user': instance.user,
    };

Identity _$IdentityFromJson(Map<String, dynamic> json) {
  return Identity(
    id: json['id'] as String,
    displayName: json['displayName'] as String,
    thumbnails: (json['thumbnails'] as List)
        ?.map((e) =>
            e == null ? null : ThumbnailSet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$IdentityToJson(Identity instance) => <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'thumbnails': instance.thumbnails,
    };
