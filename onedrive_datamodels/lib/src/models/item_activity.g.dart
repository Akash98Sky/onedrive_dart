// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemActivity _$ItemActivityFromJson(Map<String, dynamic> json) {
  return ItemActivity(
    id: json['id'] as String,
    action: json['action'] == null
        ? null
        : ItemActionSet.fromJson(json['action'] as Map<String, dynamic>),
    actor: json['actor'] == null
        ? null
        : IdentitySet.fromJson(json['actor'] as Map<String, dynamic>),
    driveItem: json['driveItem'] == null
        ? null
        : DriveItem.fromJson(json['driveItem'] as Map<String, dynamic>),
    times: json['times'] == null
        ? null
        : ItemActivityTimeSet.fromJson(json['times'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemActivityToJson(ItemActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'actor': instance.actor,
      'driveItem': instance.driveItem,
      'times': instance.times,
    };

ItemActivityTimeSet _$ItemActivityTimeSetFromJson(Map<String, dynamic> json) {
  return ItemActivityTimeSet(
    observedDateTime: json['observedDateTime'] as String,
    recordedDateTime: json['recordedDateTime'] as String,
  );
}

Map<String, dynamic> _$ItemActivityTimeSetToJson(
        ItemActivityTimeSet instance) =>
    <String, dynamic>{
      'observedDateTime': instance.observedDateTime,
      'recordedDateTime': instance.recordedDateTime,
    };
