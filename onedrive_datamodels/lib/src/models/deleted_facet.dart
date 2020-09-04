///
/// The Deleted resource indicates that the item has been deleted.
/// In this version of the API, the presence (non-null) of the
/// resource value indicates that the file was deleted. A null
/// (or missing) value indicates that the file is not deleted.
///
class DeletedFacet {
  /// Represents the state of the deleted item.
  final String state;

  DeletedFacet(this.state);

  factory DeletedFacet.fromJson(Map<String, dynamic> json) =>
      DeletedFacet(json['state'] as String);

  Map<String, dynamic> toJson() => {'state': state};

  @override
  String toString() => toJson().toString();
}
