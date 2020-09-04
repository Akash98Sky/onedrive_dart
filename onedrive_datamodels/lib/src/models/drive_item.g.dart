// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriveItem _$DriveItemFromJson(Map<String, dynamic> json) {
  return DriveItem(
    id: json['id'] as String,
    audio: json['audio'] == null
        ? null
        : AudioMeta.fromJson(json['audio'] as Map<String, dynamic>),
    cTag: json['cTag'] as String,
    deleted: json['deleted'] == null
        ? null
        : DeletedFacet.fromJson(json['deleted'] as Map<String, dynamic>),
    description: json['description'] as String,
    file: json['file'] == null
        ? null
        : FileMeta.fromJson(json['file'] as Map<String, dynamic>),
    fileSystemInfo: json['fileSystemInfo'] == null
        ? null
        : FileSystemInfo.fromJson(
            json['fileSystemInfo'] as Map<String, dynamic>),
    folder: json['folder'] == null
        ? null
        : FolderMeta.fromJson(json['folder'] as Map<String, dynamic>),
    image: json['image'] == null
        ? null
        : ImageMeta.fromJson(json['image'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : GeoCoordinates.fromJson(json['location'] as Map<String, dynamic>),
    malware: json['malware'] == null
        ? null
        : MalwareMeta.fromJson(json['malware'] as Map<String, dynamic>),
    package: json['package'] == null
        ? null
        : Package.fromJson(json['package'] as Map<String, dynamic>),
    photo: json['photo'] == null
        ? null
        : PhotoMeta.fromJson(json['photo'] as Map<String, dynamic>),
    publication: json['publication'] == null
        ? null
        : PublicationFacet.fromJson(
            json['publication'] as Map<String, dynamic>),
    remoteItem: json['remoteItem'] == null
        ? null
        : RemoteItem.fromJson(json['remoteItem'] as Map<String, dynamic>),
    root: json['root'] == null
        ? null
        : RootFacet.fromJson(json['root'] as Map<String, dynamic>),
    searchResult: json['searchResult'] == null
        ? null
        : SearchResult.fromJson(json['searchResult'] as Map<String, dynamic>),
    shared: json['shared'] == null
        ? null
        : Shared.fromJson(json['shared'] as Map<String, dynamic>),
    sharepointIds: json['sharepointIds'] == null
        ? null
        : SharePointIds.fromJson(json['sharepointIds'] as Map<String, dynamic>),
    size: json['size'] as int,
    specialFolder: json['specialFolder'] == null
        ? null
        : SpecialFolder.fromJson(json['specialFolder'] as Map<String, dynamic>),
    video: json['video'] == null
        ? null
        : VideoMeta.fromJson(json['video'] as Map<String, dynamic>),
    webDavUrl: json['webDavUrl'] as String,
    activities: (json['activities'] as List)
        ?.map((e) =>
            e == null ? null : ItemActivity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    children: (json['children'] as List)
        ?.map((e) =>
            e == null ? null : DriveItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    permissions: (json['permissions'] as List)
        ?.map((e) =>
            e == null ? null : Permission.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    thumbnails: (json['thumbnails'] as List)
        ?.map((e) =>
            e == null ? null : ThumbnailSet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versions: (json['versions'] as List)
        ?.map((e) => e == null
            ? null
            : DriveItemVersion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdBy: json['createdBy'] == null
        ? null
        : IdentitySet.fromJson(json['createdBy'] as Map<String, dynamic>),
    createdDateTime: json['createdDateTime'] as String,
    eTag: json['eTag'] as String,
    lastModifiedBy: json['lastModifiedBy'] == null
        ? null
        : IdentitySet.fromJson(json['lastModifiedBy'] as Map<String, dynamic>),
    lastModifiedDateTime: json['lastModifiedDateTime'] as String,
    name: json['name'] as String,
    parentReference: json['parentReference'] == null
        ? null
        : ItemReference.fromJson(
            json['parentReference'] as Map<String, dynamic>),
    webUrl: json['webUrl'] as String,
    microsoftGraphConflictBehavior:
        json['@microsoft.graph.conflictBehavior'] as String,
    microsoftGraphDownloadUrl: json['@microsoft.graph.downloadUrl'] as String,
    microsoftGraphSourceUrl: json['@microsoft.graph.sourceUrl'] as String,
  );
}

Map<String, dynamic> _$DriveItemToJson(DriveItem instance) => <String, dynamic>{
      'id': instance.id,
      'audio': instance.audio,
      'cTag': instance.cTag,
      'deleted': instance.deleted,
      'description': instance.description,
      'file': instance.file,
      'fileSystemInfo': instance.fileSystemInfo,
      'folder': instance.folder,
      'image': instance.image,
      'location': instance.location,
      'malware': instance.malware,
      'package': instance.package,
      'photo': instance.photo,
      'publication': instance.publication,
      'remoteItem': instance.remoteItem,
      'root': instance.root,
      'searchResult': instance.searchResult,
      'shared': instance.shared,
      'sharepointIds': instance.sharepointIds,
      'size': instance.size,
      'specialFolder': instance.specialFolder,
      'video': instance.video,
      'webDavUrl': instance.webDavUrl,
      'activities': instance.activities,
      'children': instance.children,
      'permissions': instance.permissions,
      'thumbnails': instance.thumbnails,
      'versions': instance.versions,
      'createdBy': instance.createdBy,
      'createdDateTime': instance.createdDateTime,
      'eTag': instance.eTag,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDateTime': instance.lastModifiedDateTime,
      'name': instance.name,
      'parentReference': instance.parentReference,
      'webUrl': instance.webUrl,
      '@microsoft.graph.conflictBehavior':
          instance.microsoftGraphConflictBehavior,
      '@microsoft.graph.downloadUrl': instance.microsoftGraphDownloadUrl,
      '@microsoft.graph.sourceUrl': instance.microsoftGraphSourceUrl,
    };
