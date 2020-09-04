// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteItem _$RemoteItemFromJson(Map<String, dynamic> json) {
  return RemoteItem(
    id: json['id'] as String,
    createdBy: json['createdBy'] == null
        ? null
        : IdentitySet.fromJson(json['createdBy'] as Map<String, dynamic>),
    createdDateTime: json['createdDateTime'] as String,
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
    lastModifiedBy: json['lastModifiedBy'] == null
        ? null
        : IdentitySet.fromJson(json['lastModifiedBy'] as Map<String, dynamic>),
    lastModifiedDateTime: json['lastModifiedDateTime'] as String,
    name: json['name'] as String,
    package: json['package'] == null
        ? null
        : Package.fromJson(json['package'] as Map<String, dynamic>),
    parentReference: json['parentReference'] == null
        ? null
        : ItemReference.fromJson(
            json['parentReference'] as Map<String, dynamic>),
    shared: json['shared'] == null
        ? null
        : Shared.fromJson(json['shared'] as Map<String, dynamic>),
    sharepointIds: json['sharepointIds'] == null
        ? null
        : SharePointIds.fromJson(json['sharepointIds'] as Map<String, dynamic>),
    specialFolder: json['specialFolder'] == null
        ? null
        : SpecialFolder.fromJson(json['specialFolder'] as Map<String, dynamic>),
    size: json['size'] as int,
    webDavUrl: json['webDavUrl'] == null
        ? null
        : Uri.parse(json['webDavUrl'] as String),
    webUrl: json['webUrl'] == null ? null : Uri.parse(json['webUrl'] as String),
  );
}

Map<String, dynamic> _$RemoteItemToJson(RemoteItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'createdDateTime': instance.createdDateTime,
      'file': instance.file,
      'fileSystemInfo': instance.fileSystemInfo,
      'folder': instance.folder,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDateTime': instance.lastModifiedDateTime,
      'name': instance.name,
      'package': instance.package,
      'parentReference': instance.parentReference,
      'shared': instance.shared,
      'sharepointIds': instance.sharepointIds,
      'specialFolder': instance.specialFolder,
      'size': instance.size,
      'webDavUrl': instance.webDavUrl?.toString(),
      'webUrl': instance.webUrl?.toString(),
    };
