import 'package:json_annotation/json_annotation.dart';

import 'identity.dart';
import 'item_reference.dart';
import 'onedrive_resource.dart';
import 'sharing_invitation.dart';
import 'sharing_link.dart';

part 'permission.g.dart';

///
/// The Permission resource provides information about a sharing permission
/// granted for a DriveItem resource.
///
/// Sharing permissions have a number of different forms. The Permission
/// resource represents these different forms through facets on the resource.
///
@JsonSerializable()
class Permission extends OneDriveResource {
  /// For user type permissions, the details of the users & applications
  /// for this permission.
  final IdentitySet grantedTo;

  /// For link type permissions, the details of the users to whom
  /// permission was granted.
  final List<IdentitySet> grantedToIdentities;

  /// Provides a reference to the ancestor of the current permission,
  /// if it is inherited from an ancestor.
  final ItemReference inheritedFrom;

  /// Details of any associated sharing invitation for this permission
  final SharingInvitation invitation;

  /// Provides the link details of the current permission, if it is a link
  /// type permissions.
  final SharingLink link;

  /// The type of permission, e.g. read. See below for the full list of roles.
  final List<String> roles;

  /// A unique token that can be used to access this shared item via the shares API.
  final String shareId;

  Permission({
    String id,
    this.grantedTo,
    this.grantedToIdentities,
    this.inheritedFrom,
    this.invitation,
    this.link,
    this.roles,
    this.shareId,
  }) : super(id);

  Map<String, dynamic> toJson() => _$PermissionToJson(this);

  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);

  @override
  String toString() => toJson().toString();
}
