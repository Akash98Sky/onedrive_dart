import 'package:json_annotation/json_annotation.dart';

part 'filesystem_info.g.dart';

///
/// The FileSystemInfo resource contains properties that are reported by
/// the device's local file system for the local version of an item.
///
@JsonSerializable()
class FileSystemInfo {
  /// The UTC date and time the file was created on a client.
  final DateTime createdDateTime;

  /// The UTC date and time the file was last accessed.
  /// Available for the recent file list only.
  final DateTime lastAccessedDateTime;

  /// The UTC date and time the file was last modified on a client.
  final DateTime lastModifiedDateTime;

  FileSystemInfo({
    this.createdDateTime,
    this.lastAccessedDateTime,
    this.lastModifiedDateTime,
  });

  Map<String, dynamic> toJson() => _$FileSystemInfoToJson(this);

  factory FileSystemInfo.fromJson(Map<String, dynamic> json) =>
      _$FileSystemInfoFromJson(json);

  @override
  String toString() => toJson().toString();
}
