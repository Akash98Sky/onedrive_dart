import 'package:json_annotation/json_annotation.dart';

import '../constants/enums.dart';
import '../helpers/object_type_helpers.dart';
import 'identity.dart';

part 'item_action.g.dart';

///
/// The `ItemActionSet` resource provides information about the actions
/// that made up an activity on an item.
///
/// Note: Activities is in a limited Preview and not yet available to
/// all tenants.
///
@JsonSerializable()
class ItemActionSet {
  /// A comment was added to the item.
  final CommentAction comment;

  /// An item was created.
  final CreateAction create;

  /// An item was deleted.
  final DeleteAction delete;

  /// An item was edited.
  final EditAction edit;

  /// A user was mentioned in the item.
  final MentionAction mention;

  /// An item was moved.
  final MoveAction move;

  /// An item was renamed.
  final RenameAction rename;

  /// An item was restored.
  final RestoreAction restore;

  /// An item was shared.
  final ShareAction share;

  /// An item was versioned.
  final VersionAction version;

  ItemActionSet({
    this.comment,
    this.create,
    this.delete,
    this.edit,
    this.mention,
    this.move,
    this.rename,
    this.restore,
    this.share,
    this.version,
  });

  factory ItemActionSet.fromJson(Map<String, dynamic> json) =>
      _$ItemActionSetFromJson(json);

  Map<String, dynamic> toJson() => _$ItemActionSetToJson(this);

  @override
  String toString() => toJson().toString();
}

///
/// The `CommentAction` resource provides information about a comment activity
/// made on an item.
///
@JsonSerializable()
class CommentAction {
  /// If true, this activity was a reply to an existing comment thread.
  final bool isReply;

  /// The identity of the user who started the comment thread.
  final IdentitySet parentAuthor;

  /// The identities of the users participating in this comment thread.
  final List<IdentitySet> participants;

  CommentAction({
    this.isReply,
    this.parentAuthor,
    this.participants,
  });

  factory CommentAction.fromJson(Map<String, dynamic> json) =>
      _$CommentActionFromJson(json);

  Map<String, dynamic> toJson() => _$CommentActionToJson(this);

  @override
  String toString() => toJson().toString();
}

///
/// The presence of the `CreateAction` resource on an itemActivity indicates that the activity created an item.
///
/// Note: While this resource is empty today, in future API revisions it may be populated with additional properties.
///
class CreateAction {
  final Map<String, dynamic> json;

  CreateAction(this.json);

  CreateAction.fromJson(this.json);

  Map<String, dynamic> toJson() => json;

  @override
  String toString() => toJson().toString();
}

///
/// The presence of the `DeleteAction` resource on an itemActivity indicates that
/// the activity deleted an item.
///
@JsonSerializable()
class DeleteAction {
  /// The name of the item that was deleted.
  final String name;

  /// File or Folder, depending on the type of the deleted item.
  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectType objectType;

  DeleteAction({
    this.name,
    this.objectType,
  });

  factory DeleteAction.fromJson(Map<String, dynamic> json) =>
      _$DeleteActionFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteActionToJson(this);

  @override
  String toString() => toJson().toString();
}

///
/// The presence of the `EditAction` resource on an itemActivity indicates that the activity edited an item.
///
/// Note: While this resource is empty today, in future API revisions it may be populated with additional properties.
///
class EditAction {
  final Map<String, dynamic> json;

  EditAction(this.json);

  EditAction.fromJson(this.json);

  Map<String, dynamic> toJson() => json;

  @override
  String toString() => toJson().toString();
}

///
/// The `MentionAction` resource provides information about an activity that mentioned people.
///
@JsonSerializable()
class MentionAction {
  /// The identities of the users mentioned in this action.
  final List<IdentitySet> mentionees;

  MentionAction({this.mentionees});

  factory MentionAction.fromJson(Map<String, dynamic> json) =>
      _$MentionActionFromJson(json);

  Map<String, dynamic> toJson() => _$MentionActionToJson(this);

  @override
  String toString() => toJson().toString();
}

///
/// The presence of the `MoveAction` resource on an itemActivity indicates that
/// the activity moved an item.
///
class MoveAction {
  /// The name of the location the item was moved from.
  final String from;

  /// The name of the location the item was moved to.
  final String to;

  MoveAction({this.from, this.to});

  factory MoveAction.fromJson(Map<String, dynamic> json) => MoveAction(
        from: json['from'] as String,
        to: json['to'] as String,
      );

  Map<String, dynamic> toJson() => {'from': from, 'to': to};

  @override
  String toString() => toJson().toString();
}

///
/// The presence of the `RenameAction` resource on an itemActivity indicates that
/// the activity renamed an item.
///
class RenameAction {
  /// The previous name of the item.
  final String oldName;

  /// The new name of the item.
  final String newName;

  RenameAction({this.oldName, this.newName});

  factory RenameAction.fromJson(Map<String, dynamic> json) => RenameAction(
        oldName: json['oldName'] as String,
        newName: json['newName'] as String,
      );

  Map<String, dynamic> toJson() => {'oldName': oldName, 'newName': newName};

  @override
  String toString() => toJson().toString();
}

///
/// The presence of the `RestoreAction` resource on an itemActivity indicates that the activity restored an item.
///
/// Note: While this resource is empty today, in future API revisions it may be populated with additional properties.
///
class RestoreAction {
  final Map<String, dynamic> json;

  RestoreAction(this.json);

  RestoreAction.fromJson(this.json);

  Map<String, dynamic> toJson() => json;

  @override
  String toString() => toJson().toString();
}

///
/// The `ShareAction` resource provides information about an activity that
/// shared an item.
///
@JsonSerializable()
class ShareAction {
  /// The identities the item was shared with in this action.
  final List<IdentitySet> recipients;

  ShareAction({this.recipients});

  factory ShareAction.fromJson(Map<String, dynamic> json) =>
      _$ShareActionFromJson(json);

  Map<String, dynamic> toJson() => _$ShareActionToJson(this);

  @override
  String toString() => toJson().toString();
}

///
/// The presence of the `VersionAction` resource on an itemActivity indicates
/// that the activity caused a new version to be created.
///
class VersionAction {
  /// The name of the new version that was created by this action.
  final String newVersion;

  VersionAction({this.newVersion});

  factory VersionAction.fromJson(Map<String, dynamic> json) =>
      VersionAction(newVersion: json['newVersion'] as String);

  Map<String, dynamic> toJson() => {'newVersion': newVersion};

  @override
  String toString() => toJson().toString();
}
