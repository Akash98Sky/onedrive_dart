import 'package:dio/dio.dart' hide Headers;
import 'package:onedrive_datamodels/datamodels.dart';
import 'package:retrofit/retrofit.dart';

import '../constants/strings.dart';

part 'onedrive_auth.g.dart';

@RestApi(baseUrl: AUTH_BASE_URL)
abstract class OneDriveAuth {
  final AppCredentials appCredentials;
  final String tenant;

  AccessCredentials _accessCredentials;

  AccessCredentials get accessCredentials => _accessCredentials;

  OneDriveAuth._instanciate(this.appCredentials, this.tenant);

  /// For both Microsoft accounts and work or school accounts
  factory OneDriveAuth(AppCredentials appCredentials) {
    assert(appCredentials != null, 'Must provide a non null AppCredentials');
    return _OneDriveAuth._instanciate(Dio(), appCredentials, 'common');
  }

  /// For Microsoft accounts only
  factory OneDriveAuth.personal(AppCredentials appCredentials) {
    assert(appCredentials != null, 'Must provide a non null AppCredentials');
    return _OneDriveAuth._instanciate(Dio(), appCredentials, 'consumers');
  }

  /// For work or school accounts only
  factory OneDriveAuth.business(AppCredentials appCredentials) {
    assert(appCredentials != null, 'Must provide a non null AppCredentials');
    return _OneDriveAuth._instanciate(Dio(), appCredentials, 'organizations');
  }

  ///
  /// Use web browser or web-browser control to load this URL request
  ///
  /// Upon successful authentication and authorization of your application
  /// the web browser will be redirected to your redirect URL with
  /// additional parameter [`code`]
  ///
  /// e.g: https://myapp.com/auth-redirect?code=df6aa589-1080-b241-b410-c4dff65dbf7c
  ///
  String getAuthorizationUrl() => Uri.parse(
        '$AUTH_BASE_URL/${tenant}/oauth2/v2.0/authorize?client_id=${appCredentials.clientId}&scope=${appCredentials.scope}&response_type=code&redirect_uri=${appCredentials.redirectUri}',
      ).toString();

  ///
  /// This URL will remove any cookies that enable single sign-on to occur
  /// and ensure that next time your app launches the authorization flow,
  /// the user will be required to sign in again.
  ///
  /// Using this logout flow does not revoke any content previously granted
  /// to an applicaiton.
  ///
  String getSignOutUrl() => Uri.parse(
        '$AUTH_BASE_URL/${tenant}/oauth2/v2.0/logout?post_logout_redirect_uri=${appCredentials.redirectUri}',
      ).toString();

  ///
  /// After you have received the code value, you can redeem this code for
  /// a set of tokens that allow you to authenticate with the OneDrive API.
  ///
  /// It will return [AccessCredentials] that includes several fields,
  /// including `access_token`, `token_type`, and `refresh_token` (if you
  /// requested the wl.offline_access scope)
  ///
  Future<AccessCredentials> redeemCode(String code) {
    assert(code != null, "code can't be null");
    final reqList = [
      'client_id=${appCredentials.clientId}',
      'redirect_uri=${appCredentials.redirectUri}',
      'client_secret=${appCredentials.clientSecret}',
      'code=${code}&grant_type=authorization_code',
    ];

    return _fetchAccessCredentials(reqList.join('&'));
  }

  ///
  /// If your app has requested the offline_access scope this step will return
  /// [AccessCredentials] containing `refresh_token` that can be used to
  /// generate additional `access_tokens` after the initial token has expired.
  ///
  /// OneDriveAuth object must have valid `accessCredentials` or pass optional
  /// param `refreshToken`
  ///
  Future<AccessCredentials> generateNewTockens({String refreshToken}) {
    assert(refreshToken != null || accessCredentials != null,
        "This OneDriveAuth object doesn't have valid accessCredentials");
    refreshToken ??= accessCredentials.refreshToken;

    final reqList = [
      'client_id=${appCredentials.clientId}',
      'redirect_uri=${appCredentials.redirectUri}',
      'client_secret=${appCredentials.clientSecret}',
      'refresh_token=${refreshToken}&grant_type=refresh_token',
    ];

    return _fetchAccessCredentials(reqList.join('&'));
  }

  @POST('/\${tenant}/oauth2/v2.0/token')
  @Headers({'Content-Type': 'application/x-www-form-urlencoded'})
  Future<AccessCredentials> _fetchAccessCredentials(@Body() String reqBody);
}
