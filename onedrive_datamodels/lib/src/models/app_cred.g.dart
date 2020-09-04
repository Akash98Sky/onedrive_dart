// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cred.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppCredentials _$AppCredentialsFromJson(Map<String, dynamic> json) {
  return AppCredentials(
    clientId: json['client_id'] as String,
    clientSecret: json['client_secret'] as String,
    scope:
        json['scope'] == null ? null : Scope.fromJson(json['scope'] as String),
    redirectUri: json['redirect_uri'] as String,
  );
}

Map<String, dynamic> _$AppCredentialsToJson(AppCredentials instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'scope': Scope.toJson(instance.scope),
      'redirect_uri': instance.redirectUri,
    };
