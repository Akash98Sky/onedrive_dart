import 'package:json_annotation/json_annotation.dart';

part 'folder_view.g.dart';

/// The FolderView resource provides or sets recommendations
/// on the user-experience of a folder.
///
@JsonSerializable()
class FolderView {
  /// The method by which the folder should be sorted.
  final String sortBy;

  /// If true, indicates that items should be sorted in descending order.
  /// Otherwise, items should be sorted ascending.
  final String sortOrder;

  /// The type of view that should be used to represent the folder.
  final String viewType;

  FolderView({
    this.sortBy,
    this.sortOrder,
    this.viewType,
  });

  Map<String, dynamic> toJson() => _$FolderViewToJson(this);

  factory FolderView.fromJson(Map<String, dynamic> json) =>
      _$FolderViewFromJson(json);

  @override
  String toString() => toJson().toString();
}
