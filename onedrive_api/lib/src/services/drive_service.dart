part of 'onedrive_api.dart';

@RestApi(baseUrl: API_BASE_URL + '/me/drive')
abstract class DriveService {
  final Drive drive;

  String get driveUrl => (this as _DriveService).baseUrl;

  DriveService._createService({this.drive});

  /// This returns a collection of DriveItem resources which contain the
  /// DriveItem resources shared with the owner of the drive.
  Future<List<DriveItem>> listSharedFiles({
    ShapeResponse shapeResponse,
  }) async =>
      (await _listSharedFiles(
        '/sharedWithMe',
        shapeResponse,
      ))['value'];

  /// This method returns a collection of DriveItem resources for items which
  /// the owner of the drive has recently accessed.
  Future<List<DriveItem>> listRecentFiles({
    ShapeResponse shapeResponse,
  }) async =>
      (await _listSharedFiles(
        '/recent',
        shapeResponse,
      ))['value'];

  @GET('{relativePath}')
  Future<Map<String, List<DriveItem>>> _listSharedFiles(
    @Path('relativePath') String relativePath,
    @Queries() ShapeResponse shapeResponse,
  );
}
