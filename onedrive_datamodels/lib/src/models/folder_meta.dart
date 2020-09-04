import 'package:json_annotation/json_annotation.dart';

import 'folder_view.dart';

part 'folder_meta.g.dart';

/// The Folder resource groups folder-related data on an item into a single structure.
/// DriveItems with a non-null folder facet are containers for other DriveItems.
///
@JsonSerializable()
class FolderMeta {
  /// Number of children contained immediately within this container.
  final int childCount;

  /// A collection of properties defining the recommended view for the folder.
  final FolderView view;

  FolderMeta({
    this.childCount,
    this.view,
  });

  Map<String, dynamic> toJson() => _$FolderMetaToJson(this);

  factory FolderMeta.fromJson(Map<String, dynamic> json) =>
      _$FolderMetaFromJson(json);

  @override
  String toString() => toJson().toString();
}
