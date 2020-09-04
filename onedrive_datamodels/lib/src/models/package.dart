///
/// The `Package` resource indicates that a DriveItem is the top level item in a
/// "package" or a collection of items that should be treated as a collection
/// instead of individual items.
///
class Package {
  /// A string indicating the type of package. While oneNote is the only
  /// currently defined value, you should expect other package types to be
  /// returned and handle them accordingly
  final String type;

  Package({this.type});

  factory Package.fromJson(Map<String, dynamic> json) =>
      Package(type: json['type'] as String);

  Map<String, dynamic> toJson() => {'type': type};

  @override
  String toString() => toJson().toString();
}
