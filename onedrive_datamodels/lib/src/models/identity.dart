import 'package:json_annotation/json_annotation.dart';

import 'onedrive_resource.dart';
import 'thumbnail.dart';

part 'identity.g.dart';

@JsonSerializable()
class IdentitySet {
  /// Optional. The application associated with this action.
  final Identity application;

  /// Optional. The device associated with this action.
  final Identity device;

  /// Optional. The group associated with this action.
  final Identity group;

  /// Optional. The user associated with this action.
  final Identity user;

  IdentitySet({
    this.application,
    this.device,
    this.group,
    this.user,
  });

  Map<String, dynamic> toJson() => _$IdentitySetToJson(this);

  factory IdentitySet.fromJson(Map<String, dynamic> json) =>
      _$IdentitySetFromJson(json);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
class Identity extends OneDriveResource {
  ///
  /// The identity's display name.
  ///
  /// Note that this may not always be available or up to date. For example,
  /// if a user changes their display name, the API may show the new value in
  /// a future response, but the items associated with the user won't show up
  /// as having changed when using delta.
  ///
  final String displayName;
  List<ThumbnailSet> thumbnails;

  Identity({
    String id,
    this.displayName,
    this.thumbnails,
  }) : super(id);

  Map<String, dynamic> toJson() => _$IdentityToJson(this);

  factory Identity.fromJson(Map<String, dynamic> json) =>
      _$IdentityFromJson(json);

  @override
  String toString() => toJson().toString();
}
