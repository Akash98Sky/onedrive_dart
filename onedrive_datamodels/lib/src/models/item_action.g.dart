// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemActionSet _$ItemActionSetFromJson(Map<String, dynamic> json) {
  return ItemActionSet(
    comment: json['comment'] == null
        ? null
        : CommentAction.fromJson(json['comment'] as Map<String, dynamic>),
    create: json['create'] == null
        ? null
        : CreateAction.fromJson(json['create'] as Map<String, dynamic>),
    delete: json['delete'] == null
        ? null
        : DeleteAction.fromJson(json['delete'] as Map<String, dynamic>),
    edit: json['edit'] == null
        ? null
        : EditAction.fromJson(json['edit'] as Map<String, dynamic>),
    mention: json['mention'] == null
        ? null
        : MentionAction.fromJson(json['mention'] as Map<String, dynamic>),
    move: json['move'] == null
        ? null
        : MoveAction.fromJson(json['move'] as Map<String, dynamic>),
    rename: json['rename'] == null
        ? null
        : RenameAction.fromJson(json['rename'] as Map<String, dynamic>),
    restore: json['restore'] == null
        ? null
        : RestoreAction.fromJson(json['restore'] as Map<String, dynamic>),
    share: json['share'] == null
        ? null
        : ShareAction.fromJson(json['share'] as Map<String, dynamic>),
    version: json['version'] == null
        ? null
        : VersionAction.fromJson(json['version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemActionSetToJson(ItemActionSet instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'create': instance.create,
      'delete': instance.delete,
      'edit': instance.edit,
      'mention': instance.mention,
      'move': instance.move,
      'rename': instance.rename,
      'restore': instance.restore,
      'share': instance.share,
      'version': instance.version,
    };

CommentAction _$CommentActionFromJson(Map<String, dynamic> json) {
  return CommentAction(
    isReply: json['isReply'] as bool,
    parentAuthor: json['parentAuthor'] == null
        ? null
        : IdentitySet.fromJson(json['parentAuthor'] as Map<String, dynamic>),
    participants: (json['participants'] as List)
        ?.map((e) =>
            e == null ? null : IdentitySet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CommentActionToJson(CommentAction instance) =>
    <String, dynamic>{
      'isReply': instance.isReply,
      'parentAuthor': instance.parentAuthor,
      'participants': instance.participants,
    };

DeleteAction _$DeleteActionFromJson(Map<String, dynamic> json) {
  return DeleteAction(
    name: json['name'] as String,
    objectType: objectTypeFromJson(json['objectType'] as String),
  );
}

Map<String, dynamic> _$DeleteActionToJson(DeleteAction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'objectType': objectTypeToJson(instance.objectType),
    };

MentionAction _$MentionActionFromJson(Map<String, dynamic> json) {
  return MentionAction(
    mentionees: (json['mentionees'] as List)
        ?.map((e) =>
            e == null ? null : IdentitySet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MentionActionToJson(MentionAction instance) =>
    <String, dynamic>{
      'mentionees': instance.mentionees,
    };

ShareAction _$ShareActionFromJson(Map<String, dynamic> json) {
  return ShareAction(
    recipients: (json['recipients'] as List)
        ?.map((e) =>
            e == null ? null : IdentitySet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ShareActionToJson(ShareAction instance) =>
    <String, dynamic>{
      'recipients': instance.recipients,
    };
