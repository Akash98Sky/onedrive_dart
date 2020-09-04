import 'package:json_annotation/json_annotation.dart';

import 'auth_scopes.dart';

part 'access_cred.g.dart';

@JsonSerializable()
class AccessCredentials {
  @JsonKey(name: 'token_type')
  final String tokenType;

  @JsonKey(name: 'expires_in')
  final int expiresIn;

  @JsonKey(toJson: Scope.toJson)
  final Scope scope;

  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  String get authorization => '$tokenType $accessToken';

  AccessCredentials({
    this.tokenType,
    this.expiresIn,
    this.scope,
    this.accessToken,
    this.refreshToken,
  });

  Map<String, dynamic> toJson() => _$AccessCredentialsToJson(this);

  factory AccessCredentials.fromJson(Map<String, dynamic> json) =>
      _$AccessCredentialsFromJson(json);
}
