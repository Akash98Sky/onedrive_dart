import 'package:json_annotation/json_annotation.dart';

import 'identity.dart';
import 'onedrive_resource.dart';

part 'base_item.g.dart';

@JsonSerializable()
class BaseItem extends OneDriveResource {
  final IdentitySet createdBy;
  final DateTime createdDateTime;
  final String description;
  final String eTag;
  final IdentitySet lastModifiedBy;
  final DateTime lastModifiedDateTime;
  final String name;
  final IdentitySet parentReference;
  final Uri webUrl;

  BaseItem({
    String id,
    this.createdBy,
    this.createdDateTime,
    this.description,
    this.eTag,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.name,
    this.parentReference,
    this.webUrl,
  }) : super(id);

  Map<String, dynamic> toJson() => _$BaseItemToJson(this);

  factory BaseItem.fromJson(Map<String, dynamic> json) =>
      _$BaseItemFromJson(json);

  @override
  String toString() => toJson().toString();
}
