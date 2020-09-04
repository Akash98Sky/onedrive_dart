// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_cred.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessCredentials _$AccessCredentialsFromJson(Map<String, dynamic> json) {
  return AccessCredentials(
    tokenType: json['token_type'] as String,
    expiresIn: json['expires_in'] as int,
    scope:
        json['scope'] == null ? null : Scope.fromJson(json['scope'] as String),
    accessToken: json['access_token'] as String,
    refreshToken: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$AccessCredentialsToJson(AccessCredentials instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'scope': Scope.toJson(instance.scope),
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
