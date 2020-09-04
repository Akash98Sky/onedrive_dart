import 'package:json_annotation/json_annotation.dart';

import '../constants/enums.dart';
import '../helpers/share_scope_helpers.dart';
import '../helpers/share_type_helpers.dart';
import 'identity.dart';

part 'sharing_link.g.dart';

///
/// The `SharingLink` resource groups link-related data items into a single structure.
///
/// If a Permission resource has a non-null sharingLink facet, the permission
/// represents a sharing link (as opposed to permissions granted to a person or group).
///
@JsonSerializable()
class SharingLink {
  /// The app the link is associated with.
  final Identity application;

  /// The type of the link created.
  @JsonKey(fromJson: shareTypeFromJson, toJson: shareTypeToJson)
  final ShareType type;

  /// The scope of the link represented by this permission.
  /// Value anonymous indicates the link is usable by anyone,
  /// organization indicates the link is only usable for users
  /// signed into the same tenant.
  @JsonKey(fromJson: shareScopeFromJson, toJson: shareScopeToJson)
  final ShareScope scope;

  /// For embed links, this property contains the HTML code for
  /// an <iframe> element that will embed the item in a webpage.
  final String webHtml;

  /// A URL that opens the item in the browser on the OneDrive website.
  final String webUrl;

  SharingLink({
    this.application,
    this.type,
    this.scope,
    this.webHtml,
    this.webUrl,
  });

  Map<String, dynamic> toJson() => _$SharingLinkToJson(this);

  factory SharingLink.fromJson(Map<String, dynamic> json) =>
      _$SharingLinkFromJson(json);

  @override
  String toString() => toJson().toString();
}
