import 'package:json_annotation/json_annotation.dart';

import 'drive_item.dart';
import 'identity.dart';
import 'item_action.dart';
import 'onedrive_resource.dart';

part 'item_activity.g.dart';

///
/// The ItemActivity resource provides information about activities
/// that took place on an item or within a container.
///
/// Currently only available on SharePoint and OneDrive for Business.
///
@JsonSerializable()
class ItemActivity extends OneDriveResource {
  /// Details about the action that took place.
  final ItemActionSet action;

  /// Identity of who performed the action.
  final IdentitySet actor;

  /// Exposes the driveItem that was the target of this activity.
  final DriveItem driveItem;

  /// Exposes the listItem that was the target of this activity.
  // final Action listItem;

  /// Details about when the activity took place.
  final ItemActivityTimeSet times;

  ItemActivity({
    String id,
    this.action,
    this.actor,
    this.driveItem,
    // this.listItem,
    this.times,
  }) : super(id);

  Map<String, dynamic> toJson() => _$ItemActivityToJson(this);

  factory ItemActivity.fromJson(Map<String, dynamic> json) =>
      _$ItemActivityFromJson(json);

  @override
  String toString() => toJson().toString();
}

///
/// The ItemActivityTimeSet resource provides information about
/// when an activity on an item took place.
///
@JsonSerializable()
class ItemActivityTimeSet {
  /// When the activity was observed to take place.
  final String observedDateTime;

  /// When the observation was recorded on the service.
  final String recordedDateTime;

  ItemActivityTimeSet({
    this.observedDateTime,
    this.recordedDateTime,
  });

  Map<String, dynamic> toJson() => _$ItemActivityTimeSetToJson(this);

  factory ItemActivityTimeSet.fromJson(Map<String, dynamic> json) =>
      _$ItemActivityTimeSetFromJson(json);

  @override
  String toString() => toJson().toString();
}
