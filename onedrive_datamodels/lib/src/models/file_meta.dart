import 'package:json_annotation/json_annotation.dart';

import 'hashes.dart';

part 'file_meta.g.dart';

/// The File resource groups file-related data items into a single structure.
@JsonSerializable()
class FileMeta {
  /// Hashes of the file's binary content, if available.
  final Hashes hashes;

  /// The MIME type for the file. This is determined by logic on the server
  /// and might not be the value provided when the file was uploaded.
  final String mimeType;

  /// Flag indicating if the item is still being processed to extract metadata
  final bool processingMetadata;

  FileMeta({
    this.hashes,
    this.mimeType,
    this.processingMetadata,
  });

  Map<String, dynamic> toJson() => _$FileMetaToJson(this);

  factory FileMeta.fromJson(Map<String, dynamic> json) =>
      _$FileMetaFromJson(json);

  @override
  String toString() => toJson().toString();
}
