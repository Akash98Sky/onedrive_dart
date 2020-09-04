abstract class OneDriveResource {
  /// Unique identifier for the identity.
  final String id;

  OneDriveResource(this.id);

  bool isRoot() => id == null;

  bool equals(OneDriveResource other) =>
      other != null && runtimeType == other.runtimeType && id == other.id;

  @override
  bool operator ==(other) => equals(other);
}
