import 'package:json_annotation/json_annotation.dart';

import 'content_type.dart';
import 'drive_item.dart';
import 'field_value.dart';
import 'identity.dart';
import 'item_activity.dart';
import 'item_reference.dart';
import 'onedrive_resource.dart';
import 'publication_facet.dart';
import 'sharepoint_ids.dart';

part 'list_item.g.dart';

///
/// The `ListItem` resource represents an item in a SharePoint list. Column
/// values in the list are available through the fieldValueSet dictionary.
///
@JsonSerializable()
class ListItem extends OneDriveResource {
  /// The content type of this list item
  final ContentTypeInfo contentType;

  /// The values of the columns set on this list item.
  final FieldValueSet fields;

  /// Returns identifiers useful for SharePoint REST compatibility.
  final SharePointIds sharepointIds;

  /// The list of recent activities that took place on this item.
  final List<ItemActivity> activities;

  /// For document libraries, the driveItem relationship exposes the listItem as a driveItem
  final DriveItem driveItem;

  /// The list of previous versions of the list item.
  final List<ListItemVersion> versions;

  /// The name / title of the item.
  final String name;

  /// Identity of the creator of this item.
  final IdentitySet createdBy;

  /// The date and time the item was created.
  final DateTime createdDateTime;

  /// The descriptive text for the item.
  final String description;

  /// ETag for the item.
  final String eTag;

  /// Identity of the last modifier of this item.
  final IdentitySet lastModifiedBy;

  /// The date and time the item was last modified.
  final DateTime lastModifiedDateTime;

  /// Parent information, if the item has a parent.
  final ItemReference parentReference;

  /// URL that displays the item in the browser.
  final Uri webUrl;

  ListItem({
    String id,
    this.contentType,
    this.fields,
    this.sharepointIds,
    this.activities,
    this.driveItem,
    this.versions,
    this.name,
    this.createdBy,
    this.createdDateTime,
    this.description,
    this.eTag,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.parentReference,
    this.webUrl,
  }) : super(id);

  Map<String, dynamic> toJson() => _$ListItemToJson(this);

  factory ListItem.fromJson(Map<String, dynamic> json) =>
      _$ListItemFromJson(json);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
class ListItemVersion extends OneDriveResource {
  /// A collection of the fields and values for this version of the list item.
  final FieldValueSet fields;

  /// Identity of the user which last modified the version.
  final IdentitySet lastModifiedBy;

  /// Date and time the version was last modified.
  final DateTime lastModifiedDateTime;

  /// Indicates the publication status of this particular version.
  final PublicationFacet published;

  ListItemVersion({
    String id,
    this.fields,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.published,
  }) : super(id);

  Map<String, dynamic> toJson() => _$ListItemVersionToJson(this);

  factory ListItemVersion.fromJson(Map<String, dynamic> json) =>
      _$ListItemVersionFromJson(json);

  @override
  String toString() => toJson().toString();
}
