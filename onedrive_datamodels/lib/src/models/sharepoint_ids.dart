import 'package:json_annotation/json_annotation.dart';

part 'sharepoint_ids.g.dart';

///
/// The `SharePointIds` resource groups the various identifiers for an item
/// stored in a SharePoint site or OneDrive for Business into a single structure.
///
/// Note: items returned from OneDrive personal will not include a
/// SharePointIds facet.
///
@JsonSerializable()
class SharePointIds {
  /// The unique identifier (guid) for the item's list in SharePoint.
  final String listId;

  /// An integer identifier for the item within the containing list.
  final String listItemId;

  /// The unique identifier (guid) for the item within OneDrive for Business or a SharePoint site.
  final String listItemUniqueId;

  /// The unique identifier (guid) for the item's site collection (SPSite).
  final String siteId;

  /// The SharePoint URL for the site that contains the item.
  final Uri siteUrl;

  /// The unique identifier (guid) for the tenancy.
  final String tenantId;

  /// The unique identifier (guid) for the item's site (SPWeb).
  final String webId;

  SharePointIds({
    this.listId,
    this.listItemId,
    this.listItemUniqueId,
    this.siteId,
    this.siteUrl,
    this.tenantId,
    this.webId,
  });

  Map<String, dynamic> toJson() => _$SharePointIdsToJson(this);

  factory SharePointIds.fromJson(Map<String, dynamic> json) =>
      _$SharePointIdsFromJson(json);

  @override
  String toString() => toJson().toString();
}
