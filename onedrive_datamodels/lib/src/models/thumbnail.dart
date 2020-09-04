import 'package:json_annotation/json_annotation.dart';

import 'onedrive_resource.dart';

part 'thumbnail.g.dart';

///
/// The `ThumbnailSet` resource is a keyed collection of thumbnail resources.
/// It is used to represent a set of thumbnails associated with a DriveItem.
///
@JsonSerializable()
class ThumbnailSet extends OneDriveResource {
  /// A 1920x1920 scaled thumbnail.
  final Thumbnail large;

  /// A 176x176 scaled thumbnail.
  final Thumbnail medium;

  /// A 48x48 cropped thumbnail.
  final Thumbnail small;

  /// A custom thumbnail image or the original image
  /// used to generate other thumbnails.
  final Thumbnail source;

  ThumbnailSet({
    String id,
    this.large,
    this.medium,
    this.small,
    this.source,
  }) : super(id);

  Map<String, dynamic> toJson() => _$ThumbnailSetToJson(this);

  factory ThumbnailSet.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailSetFromJson(json);

  @override
  String toString() => toJson().toString();
}

///
/// The `Thumbnail` resource type represents a thumbnail for an image, video,
/// document, or any item that has a bitmap representation.
///
@JsonSerializable()
class Thumbnail {
  /// The height of the thumbnail, in pixels.
  final int height;

  /// The unique identifier of the item that provided the thumbnail.
  /// This is only available when a folder thumbnail is requested.
  final String sourceItemId;

  ///	The URL used to fetch the thumbnail content.
  final String url;

  /// The width of the thumbnail, in pixels.
  final int width;

  /// The content stream for the thumbnail.
  @JsonKey(ignore: true)
  final Stream content;

  Thumbnail({
    this.height,
    this.sourceItemId,
    this.url,
    this.width,
    this.content,
  });

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  @override
  String toString() => toJson().toString();
}
