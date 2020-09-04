import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'auth_scopes.dart';

part 'app_cred.g.dart';

@JsonSerializable()
class AppCredentials {
  ///The client ID created for your app.
  @JsonKey(name: 'client_id')
  final String clientId;

  ///The client secret created for your app.
  @JsonKey(name: 'client_secret')
  final String clientSecret;

  /// A list of scopes that your app requires.
  @JsonKey(toJson: Scope.toJson)
  final Scope scope;

  /// The redirect URL that the browser is sent to when authentication is complete.
  @JsonKey(name: 'redirect_uri')
  final String redirectUri;

  AppCredentials({
    @required this.clientId,
    @required this.clientSecret,
    this.scope = const Scope(),
    @required this.redirectUri,
  }) : assert(clientId != null && clientSecret != null && redirectUri != null);

  Map<String, dynamic> toJson() => _$AppCredentialsToJson(this);

  factory AppCredentials.fromJson(Map<String, dynamic> json) =>
      _$AppCredentialsFromJson(json);
}
