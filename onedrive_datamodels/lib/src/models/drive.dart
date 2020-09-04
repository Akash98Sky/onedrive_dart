import 'package:json_annotation/json_annotation.dart';

import '../constants/enums.dart';
import '../helpers/drive_type_helpers.dart';
import 'drive_item.dart';
import 'identity.dart';
import 'item_activity.dart';
import 'onedrive_resource.dart';
import 'quota.dart';
import 'sharepoint_ids.dart';
import 'system_facet.dart';

part 'drive.g.dart';

///
/// The `Drive` resource is the top level object representing a user's OneDrive
/// or a document library in SharePoint.
///
/// OneDrive users will always have at least one drive available, their default
/// drive. Users without a OneDrive license may not have a default drive available.
///
@JsonSerializable()
class Drive extends OneDriveResource {
  final List<ItemActivity> activities;

  /// Identity of the user, device, or application which created the item.
  final IdentitySet createdBy;

  /// Date and time of item creation.
  final String createdDateTime;

  /// Provide a user-visible description of the drive.
  final String description;

  /// Describes the type of drive represented by this resource.
  @JsonKey(toJson: driveTypeToJson, fromJson: driveTypeFromJson)
  final DriveType driveType;

  /// All items contained in the drive. Nullable.
  final List<DriveItem> items;

  /// Identity of the user, device, and application which last modified the item.
  final IdentitySet lastModifiedBy;

  /// Date and time the item was last modified.
  final DateTime lastModifiedDateTime;

  /// The name of the item.
  final String name;

  /// Optional. The user account that owns the drive.
  final IdentitySet owner;

  /// Optional. Information about the drive's storage space quota.
  final Quota quota;

  /// The root folder of the drive.
  final DriveItem root;

  /// Returns identifiers useful for SharePoint REST compatibility.
  final SharePointIds sharepointIds;

  /// Collection of common folders available in OneDrive.
  final List<DriveItem> special;

  /// If present, indicates that this is a system-managed drive.
  final SystemFacet system;

  /// URL that displays the resource in the browser.
  final Uri webUrl;

  Drive({
    /// The unique identifier of the drive.
    String id,
    this.activities,
    this.createdBy,
    this.createdDateTime,
    this.description,
    this.driveType,
    this.items,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.name,
    this.owner,
    this.quota,
    this.root,
    this.sharepointIds,
    this.special,
    this.system,
    this.webUrl,
  }) : super(id);

  Map<String, dynamic> toJson() => _$DriveToJson(this);

  factory Drive.fromJson(Map<String, dynamic> json) => _$DriveFromJson(json);

  @override
  String toString() => toJson().toString();
}
