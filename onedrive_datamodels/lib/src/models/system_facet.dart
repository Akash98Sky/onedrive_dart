///
/// The `SystemFacet` indicates that the object is managed by the system for
/// its own operation. Most apps should ignore items that have a System facet.
///
/// Note: While this facet is empty today, in future API revisions
/// the facet may be populated with additional properties.
///
class SystemFacet {
  final Map<String, dynamic> json;

  SystemFacet(this.json);

  SystemFacet.fromJson(this.json);

  Map<String, dynamic> toJson() => json;

  @override
  String toString() => toJson().toString();
}
