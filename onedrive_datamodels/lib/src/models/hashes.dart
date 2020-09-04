import 'package:json_annotation/json_annotation.dart';

part 'hashes.g.dart';

/// The Hashes resource groups available hashes into a single structure
/// for an item.
///
/// Note: Not all services provide a value for all hash properties listed.
///
@JsonSerializable()
class Hashes {
  /// (Hex string). SHA1 hash for the contents of the file (if available).
  final String crc32Hash;

  /// (Hex string). The CRC32 value of the file in little endian (if available).
  final String sha1Hash;

  /// (Base64 string). A proprietary hash of the file that can be used to determine
  /// if the contents of the file have changed (if available).
  final String quickXorHash;

  Hashes({
    this.crc32Hash,
    this.sha1Hash,
    this.quickXorHash,
  });

  Map<String, dynamic> toJson() => _$HashesToJson(this);

  factory Hashes.fromJson(Map<String, dynamic> json) => _$HashesFromJson(json);

  @override
  String toString() => toJson().toString();
}
