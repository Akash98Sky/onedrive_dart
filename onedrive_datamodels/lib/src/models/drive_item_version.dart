import 'package:json_annotation/json_annotation.dart';

import 'identity.dart';
import 'onedrive_resource.dart';
import 'publication_facet.dart';

part 'drive_item_version.g.dart';

/// The DriveItemVersion resource represents a specific version of a DriveItem.
@JsonSerializable()
class DriveItemVersion extends OneDriveResource {
  /// The content stream for this version of the item.
  @JsonKey(ignore: true)
  final Stream content;

  /// Identity of the user which last modified the version.
  final IdentitySet lastModifiedBy;

  /// Date and time the version was last modified.
  final DateTime lastModifiedDateTime;

  /// Indicates the publication status of this particular version.
  final PublicationFacet publication;

  /// Indicates the size of the content stream for this version of the item.
  final int size;

  DriveItemVersion({
    String id,
    this.content,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.publication,
    this.size,
  }) : super(id);

  Map<String, dynamic> toJson() => _$DriveItemVersionToJson(this);

  factory DriveItemVersion.fromJson(Map<String, dynamic> json) =>
      _$DriveItemVersionFromJson(json);

  @override
  String toString() => toJson().toString();
}
