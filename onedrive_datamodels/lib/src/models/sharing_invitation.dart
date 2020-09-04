import 'package:json_annotation/json_annotation.dart';

import 'identity.dart';

part 'sharing_invitation.g.dart';

///
/// The `SharingInvitation` resource groups invitation-related data items
/// into a single structure.
///
@JsonSerializable()
class SharingInvitation {
  /// The email address provided for the recipient of the sharing invitation.
  final String email;

  /// Provides information about who sent the invitation that
  /// created this permission, if that information is available.
  final IdentitySet invitedBy;

  /// If true the recipient of the invitation needs to sign in
  /// in order to access the shared item.
  final bool signInRequired;

  SharingInvitation({this.email, this.invitedBy, this.signInRequired});

  Map<String, dynamic> toJson() => _$SharingInvitationToJson(this);

  factory SharingInvitation.fromJson(Map<String, dynamic> json) =>
      _$SharingInvitationFromJson(json);

  @override
  String toString() => toJson().toString();
}
