import 'package:json_annotation/json_annotation.dart';

import '../constants/enums.dart';
import '../helpers/quota_state_helpers.dart';

part 'quota.g.dart';

@JsonSerializable()
class Quota {
  /// Total space consumed by files in the recycle bin, in bytes.
  final int deleted;

  /// Total number of files.
  ///
  /// Not available on Personal OneDrive.
  final int fileCount;

  /// Total space remaining before reaching the quota limit, in bytes.
  final int remaining;

  /// Enumeration value that indicates the state of the storage space.
  @JsonKey(toJson: quotaStateToJson, fromJson: quotaStateFromJson)
  final QuotaState state;

  /// Total allowed storage space, in bytes.
  final int total;

  /// Total space used, in bytes.
  final int used;

  Quota({
    this.deleted,
    this.fileCount,
    this.remaining,
    this.state,
    this.total,
    this.used,
  });

  Map<String, dynamic> toJson() => _$QuotaToJson(this);

  factory Quota.fromJson(Map<String, dynamic> json) => _$QuotaFromJson(json);

  @override
  String toString() => toJson().toString();
}
