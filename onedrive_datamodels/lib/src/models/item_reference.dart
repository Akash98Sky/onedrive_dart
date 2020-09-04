import 'package:json_annotation/json_annotation.dart';

import '../constants/enums.dart';
import '../helpers/drive_type_helpers.dart';
import 'onedrive_resource.dart';
import 'sharepoint_ids.dart';

part 'item_reference.g.dart';

///
/// The ItemReference resource provides information necessary to address
/// a DriveItem via the API.
///
@JsonSerializable()
class ItemReference extends OneDriveResource {
  ///  	Identifier of the drive instance that contains the item.
  final String driveId;

  /// Identifies the type of drive.
  @JsonKey(fromJson: driveTypeFromJson, toJson: driveTypeToJson)
  final DriveType driveType;

  /// Identifier of the list.
  final String listId;

  /// The name of the item being referenced.
  final String name;

  /// Path that can be used to navigate to the item.
  final String path;

  /// Identifier for a shared resource that can be accessed via the Shares API.
  final String shareId;

  /// Identifiers useful for SharePoint REST compatibility.
  final SharePointIds sharepointIds;

  /// Identifier of the site.
  final String siteId;

  ItemReference({
    String id,
    this.driveId,
    this.driveType,
    this.listId,
    this.name,
    this.path,
    this.shareId,
    this.sharepointIds,
    this.siteId,
  }) : super(id);

  Map<String, dynamic> toJson() => _$ItemReferenceToJson(this);

  factory ItemReference.fromJson(Map<String, dynamic> json) =>
      _$ItemReferenceFromJson(json);

  @override
  String toString() => toJson().toString();
}
