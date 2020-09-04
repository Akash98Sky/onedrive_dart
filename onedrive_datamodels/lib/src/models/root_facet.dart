///
/// The `RootFacet` indicates that an object is the top-most one in its hierarchy.
/// The presence (non-null) of the facet value indicates that the object is the root.
/// A null (or missing) value indicates the object is not the root.
///
/// Note: While this facet is empty today, in future API revisions the facet
/// may be populated with additional properties.
///
class RootFacet {
  final Map<String, dynamic> json;

  RootFacet(this.json);

  RootFacet.fromJson(this.json);

  Map<String, dynamic> toJson() => json;

  @override
  String toString() => toJson().toString();
}
