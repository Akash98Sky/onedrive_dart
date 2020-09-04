import 'package:json_annotation/json_annotation.dart';

import '../constants/enums.dart';
import '../helpers/share_scope_helpers.dart';
import 'identity.dart';

part 'shared.g.dart';

///
/// The `Shared` resource indicates a DriveItem has been shared with others.
/// The resource includes information about how the item is shared.
///
/// If a Driveitem has a non-null shared facet, the item has been shared.
///
@JsonSerializable()
class Shared {
  /// The identity of the owner of the shared item.
  final IdentitySet owner;

  /// Indicates the scope of how the item is shared:
  /// anonymous, organization, or users.
  @JsonKey(fromJson: shareScopeFromJson, toJson: shareScopeToJson)
  final ShareScope scope;

  /// The identity of the user who shared the item.
  final IdentitySet sharedBy;

  /// The UTC date and time when the item was shared.
  final DateTime sharedDateTime;

  Shared({
    this.owner,
    this.scope,
    this.sharedBy,
    this.sharedDateTime,
  });

  Map<String, dynamic> toJson() => _$SharedToJson(this);

  factory Shared.fromJson(Map<String, dynamic> json) => _$SharedFromJson(json);

  @override
  String toString() => toJson().toString();
}
