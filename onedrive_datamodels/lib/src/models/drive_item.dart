import 'package:json_annotation/json_annotation.dart';

import 'audio.dart';
import 'deleted_facet.dart';
import 'drive_item_version.dart';
import 'file_meta.dart';
import 'filesystem_info.dart';
import 'folder_meta.dart';
import 'geo_coordinates.dart';
import 'identity.dart';
import 'image_meta.dart';
import 'item_activity.dart';
import 'item_reference.dart';
import 'malware_meta.dart';
import 'onedrive_resource.dart';
import 'package.dart';
import 'permission.dart';
import 'photo_meta.dart';
import 'publication_facet.dart';
import 'remote_item.dart';
import 'root_facet.dart';
import 'search_result.dart';
import 'shared.dart';
import 'sharepoint_ids.dart';
import 'special_folder.dart';
import 'thumbnail.dart';
import 'video_meta.dart';

part 'drive_item.g.dart';

///
/// The `DriveItem` resource represents a file, folder, or other item
/// stored in a drive. All file system objects in OneDrive and SharePoint
/// are returned as driveItem resources.
///
@JsonSerializable()
class DriveItem extends OneDriveResource {
  /// Audio metadata, if the item is an audio file.
  final AudioMeta audio;

  /// The content stream, if the item represents a file.
  @JsonKey(ignore: true)
  final Stream content;

  ///
  /// An eTag for the content of the item. This eTag is not changed
  /// if only the metadata is changed.
  ///
  /// Note This property is not returned if the item is a folder
  ///
  final String cTag;

  /// Information about the deleted state of the item.
  final DeletedFacet deleted;

  /// Provides a user-visible description of the item. Only on OneDrive Personal
  final String description;

  /// File metadata, if the item is a file.
  final FileMeta file;

  /// File system information on client.
  final FileSystemInfo fileSystemInfo;

  /// Folder metadata, if the item is a folder.
  final FolderMeta folder;

  // Image metadata, if the item is an image.
  final ImageMeta image;

  /// Location metadata, if the item has location data.
  final GeoCoordinates location;

  /// Malware metadata, if the item was detected to contain malware.
  final MalwareMeta malware;

  /// If present, indicates that this item is a package instead of
  /// a folder or file. Packages are treated like files in some
  /// contexts and folders in others.
  final Package package;

  /// Photo metadata, if the item is a photo.
  final PhotoMeta photo;

  /// Provides information about the published or checked-out
  /// state of an item, in locations that support such actions.
  /// This property is not returned by default.
  final PublicationFacet publication;

  /// Remote item data, if the item is shared from a drive
  /// other than the one being accessed.
  final RemoteItem remoteItem;

  /// If this property is non-null, it indicates that
  /// the driveItem is the top-most driveItem in the drive.
  final RootFacet root;

  /// Search metadata, if the item is from a search result.
  final SearchResult searchResult;

  /// Indicates that the item has been shared with others and
  /// provides information about the shared state of the item.
  final Shared shared;

  /// Returns identifiers useful for SharePoint REST compatibility.
  final SharePointIds sharepointIds;

  /// Size of the item in bytes.
  final int size;

  /// If the current item is also available as a special folder,
  /// this facet is returned.
  final SpecialFolder specialFolder;

  /// Video metadata, if the item is a video.
  final VideoMeta video;

  ///	WebDAV compatible URL for the item.
  final String webDavUrl;

  /// The list of recent activities that took place on this item.
  final List<ItemActivity> activities;

  /// Collection containing Item objects for the immediate children of Item.
  /// Only items representing folders have children.
  final List<DriveItem> children;

  /// The set of permissions for the item.
  final List<Permission> permissions;

  /// Collection containing ThumbnailSet objects associated with the item.
  /// For more info, see getting thumbnails.
  final List<ThumbnailSet> thumbnails;

  /// The list of previous versions of the item. For more info,
  /// see getting previous versions.
  final List<DriveItemVersion> versions;

  /// Identity of the user, device, and application which created the item.
  final IdentitySet createdBy;

  /// Date and time of item creation.
  final String createdDateTime;

  /// eTag for the entire item (metadata + content).
  final String eTag;

  /// Identity of the user, device, and application which last modified the item.
  final IdentitySet lastModifiedBy;

  /// Date and time the item was last modified.
  final String lastModifiedDateTime;

  /// The name of the item (filename and extension).
  final String name;

  /// Parent information, if the item has a parent.
  final ItemReference parentReference;

  /// URL that displays the resource in the browser.
  final String webUrl;

  /// The conflict resolution behavior for actions that create a new item.
  /// You can use the values fail, replace, or rename. The default for PUT
  /// is replace. An item will never be returned with this annotation.
  @JsonKey(name: '@microsoft.graph.conflictBehavior')
  final String microsoftGraphConflictBehavior;

  /// A URL that can be used to download this file's content.
  /// Authentication is not required with this URL.
  @JsonKey(name: '@microsoft.graph.downloadUrl')
  final String microsoftGraphDownloadUrl;

  /// When issuing a PUT request, this instance annotation can be used to
  /// instruct the service to download the contents of the URL,
  /// and store it as the file.
  @JsonKey(name: '@microsoft.graph.sourceUrl')
  final String microsoftGraphSourceUrl;

  DriveItem({
    String id,
    this.audio,
    this.content,
    this.cTag,
    this.deleted,
    this.description,
    this.file,
    this.fileSystemInfo,
    this.folder,
    this.image,
    this.location,
    this.malware,
    this.package,
    this.photo,
    this.publication,
    this.remoteItem,
    this.root,
    this.searchResult,
    this.shared,
    this.sharepointIds,
    this.size,
    this.specialFolder,
    this.video,
    this.webDavUrl,
    this.activities,
    this.children,
    this.permissions,
    this.thumbnails,
    this.versions,
    this.createdBy,
    this.createdDateTime,
    this.eTag,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.name,
    this.parentReference,
    this.webUrl,
    this.microsoftGraphConflictBehavior,
    this.microsoftGraphDownloadUrl,
    this.microsoftGraphSourceUrl,
  }) : super(id);

  Map<String, dynamic> toJson() => _$DriveItemToJson(this);

  factory DriveItem.fromJson(Map<String, dynamic> json) =>
      _$DriveItemFromJson(json);

  @override
  String toString() => toJson().toString();
}
