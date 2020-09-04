import 'package:json_annotation/json_annotation.dart';

part 'image_meta.g.dart';

///
/// The `Image` resource groups image-related properties into a single structure.
/// If a DriveItem has a non-null image facet, the item represents a bitmap image.
///
/// Note: If the service is unable to determine the width and height
/// of the image,the Image resource may be empty.
///
@JsonSerializable()
class ImageMeta {
  /// Optional. Height of the image, in pixels.
  final int width;

  /// Optional. Width of the image, in pixels.
  final int height;

  ImageMeta({
    this.width,
    this.height,
  });

  Map<String, dynamic> toJson() => _$ImageMetaToJson(this);

  factory ImageMeta.fromJson(Map<String, dynamic> json) =>
      _$ImageMetaFromJson(json);

  @override
  String toString() => toJson().toString();
}
