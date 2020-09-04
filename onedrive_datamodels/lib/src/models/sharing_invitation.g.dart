// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sharing_invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharingInvitation _$SharingInvitationFromJson(Map<String, dynamic> json) {
  return SharingInvitation(
    email: json['email'] as String,
    invitedBy: json['invitedBy'] == null
        ? null
        : IdentitySet.fromJson(json['invitedBy'] as Map<String, dynamic>),
    signInRequired: json['signInRequired'] as bool,
  );
}

Map<String, dynamic> _$SharingInvitationToJson(SharingInvitation instance) =>
    <String, dynamic>{
      'email': instance.email,
      'invitedBy': instance.invitedBy,
      'signInRequired': instance.signInRequired,
    };
