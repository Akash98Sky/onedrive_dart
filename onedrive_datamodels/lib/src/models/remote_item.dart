import 'package:json_annotation/json_annotation.dart';

import 'file_meta.dart';
import 'filesystem_info.dart';
import 'folder_meta.dart';
import 'identity.dart';
import 'item_reference.dart';
import 'onedrive_resource.dart';
import 'package.dart';
import 'shared.dart';
import 'sharepoint_ids.dart';
import 'special_folder.dart';

part 'remote_item.g.dart';

///
/// The `RemoteItem` resource indicates that a driveItem references an item
/// that exists in another drive. This resource provides the unique IDs of
/// the source drive and target item.
///
/// DriveItems with a non-null remoteItem facet are resources that are shared,
/// added to the user's OneDrive, or on items returned from hetrogenous
/// collections of items (like search results).
///
/// Note: Unlike with folders in the same drive, a driveItem moved into
/// a remote item may have its id value changed.
///
@JsonSerializable()
class RemoteItem extends OneDriveResource {
  /// Identity of the user, device, and application which created the item.
  final IdentitySet createdBy;

  /// Date and time of item creation.
  final String createdDateTime;

  /// Indicates that the remote item is a file.
  final FileMeta file;

  /// Information about the remote item from the local file system.
  final FileSystemInfo fileSystemInfo;

  /// Indicates that the remote item is a folder.
  final FolderMeta folder;

  /// Identity of the user, device, and application which last modified the item.
  final IdentitySet lastModifiedBy;

  /// Date and time the item was last modified.
  final String lastModifiedDateTime;

  /// Optional. Filename of the remote item.
  final String name;

  /// If present, indicates that this item is a package instead of a folder or file.
  /// Packages are treated like files in some contexts and folders in others.
  final Package package;

  /// Properties of the parent of the remote item.
  final ItemReference parentReference;

  /// Indicates that the item has been shared with others and provides
  /// information about the shared state of the item.
  final Shared shared;

  /// Provides interop between items in OneDrive for Business and
  /// SharePoint with the full set of item identifiers.
  final SharePointIds sharepointIds;

  /// If the current item is also available as a special folder,
  /// this facet is returned.
  final SpecialFolder specialFolder;

  /// Size of the remote item.
  final int size;

  /// DAV compatible URL for the item.
  final Uri webDavUrl;

  /// URL that displays the resource in the browser.
  final Uri webUrl;

  RemoteItem({
    String id,
    this.createdBy,
    this.createdDateTime,
    this.file,
    this.fileSystemInfo,
    this.folder,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.name,
    this.package,
    this.parentReference,
    this.shared,
    this.sharepointIds,
    this.specialFolder,
    this.size,
    this.webDavUrl,
    this.webUrl,
  }) : super(id);

  Map<String, dynamic> toJson() => _$RemoteItemToJson(this);

  factory RemoteItem.fromJson(Map<String, dynamic> json) =>
      _$RemoteItemFromJson(json);

  @override
  String toString() => toJson().toString();
}
