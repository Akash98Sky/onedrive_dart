// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onedrive_auth.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _OneDriveAuth extends OneDriveAuth {
  _OneDriveAuth._instanciate(
      this._dio, AppCredentials appCredentials, String tenant,
      {this.baseUrl})
      : super._instanciate(appCredentials, tenant) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://login.microsoftonline.com';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<AccessCredentials> _fetchAccessCredentials(reqBody) async {
    ArgumentError.checkNotNull(reqBody, 'reqBody');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = reqBody;
    final _result = await _dio.request<Map<String, dynamic>>(
        '/${tenant}/oauth2/v2.0/token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{
              r'Content-Type': 'application/x-www-form-urlencoded'
            },
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = AccessCredentials.fromJson(_result.data);
    return value;
  }
}
