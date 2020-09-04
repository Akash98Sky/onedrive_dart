// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onedrive_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _OneDriveAPI extends OneDriveAPI {
  _OneDriveAPI._instanciate(this._dio, AccessCredentials accessCredentials,
      {this.baseUrl})
      : super._instanciate(accessCredentials) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://graph.microsoft.com/v1.0';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Drive> _getDrive(drivePath) async {
    ArgumentError.checkNotNull(drivePath, 'drivePath');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('$drivePath',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Content-Type': 'application/json'},
            extra: _extra,
            contentType: 'application/json',
            baseUrl: baseUrl),
        data: _data);
    final value = Drive.fromJson(_result.data);
    return value;
  }

  @override
  Future<Map<String, List<Drive>>> _listDrives(drivePath, shapeResponse) async {
    ArgumentError.checkNotNull(drivePath, 'drivePath');
    ArgumentError.checkNotNull(shapeResponse, 'shapeResponse');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(shapeResponse?.toJson() ?? <String, dynamic>{});
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '$drivePath/drives',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Content-Type': 'application/json'},
            extra: _extra,
            contentType: 'application/json',
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data.map((k, dynamic v) => MapEntry(
        k,
        (v as List)
            .map((i) => Drive.fromJson(i as Map<String, dynamic>))
            .toList()));

    return value;
  }
}

class _DriveService extends DriveService {
  _DriveService._createService(this._dio, {this.baseUrl, Drive drive})
      : super._createService(drive: drive) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://graph.microsoft.com/v1.0/me/drive';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Map<String, List<DriveItem>>> _listSharedFiles(
      relativePath, shapeResponse) async {
    ArgumentError.checkNotNull(relativePath, 'relativePath');
    ArgumentError.checkNotNull(shapeResponse, 'shapeResponse');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(shapeResponse?.toJson() ?? <String, dynamic>{});
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('$relativePath',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data.map((k, dynamic v) => MapEntry(
        k,
        (v as List)
            .map((i) => DriveItem.fromJson(i as Map<String, dynamic>))
            .toList()));

    return value;
  }
}
