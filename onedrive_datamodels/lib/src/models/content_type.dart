import 'onedrive_resource.dart';

///
/// The contentTypeInfo resource indicates the SharePoint content type of an item.
///
class ContentTypeInfo extends OneDriveResource {
  /// The name of the content type.
  final String name;

  ContentTypeInfo({
    /// The id of the content type.
    String id,
    this.name,
  }) : super(id);

  factory ContentTypeInfo.fromJson(Map<String, dynamic> json) =>
      ContentTypeInfo(
        id: json['id'] as String,
        name: json['name'] as String,
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  @override
  String toString() => toJson().toString();
}
