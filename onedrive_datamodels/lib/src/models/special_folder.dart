///
/// The `SpecialFolder` resource groups special folder-related data items
/// into a single structure.
///
/// If a DriveItem has a non-null specialFolder facet, the item represents
/// a special (named) folder. Special folders can be accessed directly via
/// the special folders collection.
///
class SpecialFolder {
  /// The unique identifier for this item in the /drive/special collection
  final String name;

  SpecialFolder({this.name});

  factory SpecialFolder.fromJson(Map<String, dynamic> json) =>
      SpecialFolder(name: json['name']);

  Map<String, dynamic> toJson() => {'name': name};

  @override
  String toString() => toJson().toString();
}
