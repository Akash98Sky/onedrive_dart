// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThumbnailSet _$ThumbnailSetFromJson(Map<String, dynamic> json) {
  return ThumbnailSet(
    id: json['id'] as String,
    large: json['large'] == null
        ? null
        : Thumbnail.fromJson(json['large'] as Map<String, dynamic>),
    medium: json['medium'] == null
        ? null
        : Thumbnail.fromJson(json['medium'] as Map<String, dynamic>),
    small: json['small'] == null
        ? null
        : Thumbnail.fromJson(json['small'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : Thumbnail.fromJson(json['source'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ThumbnailSetToJson(ThumbnailSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'source': instance.source,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return Thumbnail(
    height: json['height'] as int,
    sourceItemId: json['sourceItemId'] as String,
    url: json['url'] as String,
    width: json['width'] as int,
  );
}

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'height': instance.height,
      'sourceItemId': instance.sourceItemId,
      'url': instance.url,
      'width': instance.width,
    };
