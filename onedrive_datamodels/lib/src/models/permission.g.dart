// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  return Permission(
    id: json['id'] as String,
    grantedTo: json['grantedTo'] == null
        ? null
        : IdentitySet.fromJson(json['grantedTo'] as Map<String, dynamic>),
    grantedToIdentities: (json['grantedToIdentities'] as List)
        ?.map((e) =>
            e == null ? null : IdentitySet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    inheritedFrom: json['inheritedFrom'] == null
        ? null
        : ItemReference.fromJson(json['inheritedFrom'] as Map<String, dynamic>),
    invitation: json['invitation'] == null
        ? null
        : SharingInvitation.fromJson(
            json['invitation'] as Map<String, dynamic>),
    link: json['link'] == null
        ? null
        : SharingLink.fromJson(json['link'] as Map<String, dynamic>),
    roles: (json['roles'] as List)?.map((e) => e as String)?.toList(),
    shareId: json['shareId'] as String,
  );
}

Map<String, dynamic> _$PermissionToJson(Permission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'grantedTo': instance.grantedTo,
      'grantedToIdentities': instance.grantedToIdentities,
      'inheritedFrom': instance.inheritedFrom,
      'invitation': instance.invitation,
      'link': instance.link,
      'roles': instance.roles,
      'shareId': instance.shareId,
    };
