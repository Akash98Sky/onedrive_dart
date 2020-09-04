import 'package:json_annotation/json_annotation.dart';

import 'drive_item.dart';
import 'identity.dart';
import 'list_item.dart';
import 'onedrive_resource.dart';

part 'shared_drive_item.g.dart';

///
/// The `SharedDriveItem` resource is returned when using the Shares API
/// to access a shared driveItem.
///
@JsonSerializable()
class SharedDriveItem extends OneDriveResource {
  /// The display name of the shared item.
  final String name;

  /// Information about the owner of the shared item being referenced.
  final IdentitySet owner;

  /// Used to access the underlying driveItem
  final DriveItem driveItem;

  /// All driveItems contained in the sharing root.
  /// This collection cannot be enumerated.
  final List<DriveItem> items;

  /// Used to access the underlying list
  final Map<String, dynamic> list; // TODO: datamodel implementation

  /// Used to access the underlying listItem
  final ListItem listItem;

  /// Used to access the underlying site
  final Map<String, dynamic> site; // TODO: datamodel implementation

  SharedDriveItem({
    String id,
    this.name,
    this.owner,
    this.driveItem,
    this.items,
    this.list,
    this.listItem,
    this.site,
  }) : super(id);

  Map<String, dynamic> toJson() => _$SharedDriveItemToJson(this);

  factory SharedDriveItem.fromJson(Map<String, dynamic> json) =>
      _$SharedDriveItemFromJson(json);

  @override
  String toString() => toJson().toString();
}
