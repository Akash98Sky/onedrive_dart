import 'package:dio/dio.dart' hide Headers;
import 'package:onedrive_api/src/settings/shape_response.dart';
import 'package:onedrive_datamodels/datamodels.dart';
import 'package:retrofit/retrofit.dart';

import '../constants/strings.dart';

part 'drive_service.dart';
part 'onedrive_api.g.dart';

@RestApi(baseUrl: API_BASE_URL)
abstract class OneDriveAPI {
  final AccessCredentials accessCredentials;

  OneDriveAPI._instanciate(this.accessCredentials)
      : assert(accessCredentials != null,
            'Must provide a non null AccessCredentials');

  factory OneDriveAPI(AccessCredentials credentials) =>
      _OneDriveAPI._instanciate(
        Dio(BaseOptions(
          headers: {'Authorization': credentials.authorization},
        )),
        credentials,
      );

  DriveService driveService({Drive drive}) {
    final baseUrl = drive == null ? null : API_BASE_URL + '/drives/${drive.id}';

    return _DriveService._createService(
      (this as _OneDriveAPI)._dio,
      baseUrl: baseUrl,
      drive: drive,
    );
  }

  /// Get current user's OneDrive
  Future<Drive> getDrive() => _getDrive('/me/drive');

  ///
  /// Get a drive by ID
  ///
  /// @param `driveId` - The identifier for the drive requested.
  ///
  Future<Drive> getDriveById(String driveId) => _getDrive('/drives/$driveId');

  ///
  /// Get a user's OneDrive
  ///
  /// @param `idOrUserPrincipalName` - The identifier for the user object who
  /// owns the OneDrive.
  ///
  Future<Drive> getUsersDrive(String idOrUserPrincipalName) =>
      _getDrive('/users/$idOrUserPrincipalName/drive');

  ///
  /// Get the document library associated with a group
  ///
  /// @param `groupId` - The identifier for the group which owns the
  /// document library.
  ///
  Future<Drive> getDocumentLibraryOfGroup(String groupId) =>
      _getDrive('/groups/$groupId/drive');

  ///
  /// Get the document library for a site
  ///
  /// @param `siteId` - The identifier for the site that contains the
  /// document library.
  ///
  Future<Drive> getDocumentLibraryOfSite(String siteId) =>
      _getDrive('/sites/$siteId/drive');

  @GET('{drivePath}')
  @Headers({'Content-Type': 'application/json'})
  Future<Drive> _getDrive(@Path('drivePath') String drivePath);

  /// List the current user's drives
  Future<Map<String, List<Drive>>> listDrives({
    ShapeResponse shapeResponse = const ShapeResponse(),
  }) =>
      _listDrives('/me', shapeResponse);

  /// List a user's drives
  Future<Map<String, List<Drive>>> listUsersDrives(
    String userId, {
    ShapeResponse shapeResponse = const ShapeResponse(),
  }) =>
      _listDrives('/users/$userId', shapeResponse);

  /// List a group's drives
  Future<Map<String, List<Drive>>> listGroupsDrives(
    String gropuId, {
    ShapeResponse shapeResponse = const ShapeResponse(),
  }) =>
      _listDrives('/groups/$gropuId', shapeResponse);

  /// List a site's drives
  Future<Map<String, List<Drive>>> listSitesDrives(
    String siteId, {
    ShapeResponse shapeResponse = const ShapeResponse(),
  }) =>
      _listDrives('/sites/$siteId', shapeResponse);

  @GET('{drivePath}/drives')
  @Headers({'Content-Type': 'application/json'})
  Future<Map<String, List<Drive>>> _listDrives(
    @Path('drivePath') String drivePath,
    @Queries() ShapeResponse shapeResponse,
  );
}
