import 'package:json_annotation/json_annotation.dart';

part 'video_meta.g.dart';

///
/// The `Video` resource groups video-related data items into a single structure.
///
/// If a DriveItem has a non-null video facet, the item represents a video file.
/// The properties of the Video resource are populated by extracting metadata
/// from the file.
///
@JsonSerializable()
class VideoMeta {
  /// Number of audio bits per sample.
  final int audioBitsPerSample;

  /// Number of audio channels.
  final int audioChannels;

  /// Name of the audio format (AAC, MP3, etc.).
  final String audioFormat;

  /// Number of audio samples per second.
  final int audioSamplesPerSecond;

  /// Bit rate of the video in bits per second.
  final int bitrate;

  /// Duration of the file in milliseconds.
  final int duration;

  /// "Four character code" name of the video format.
  final String fourCc;

  /// Frame rate of the video.
  final double frameRate;

  /// Height of the video, in pixels.
  final int height;

  /// Width of the video, in pixels.
  final int width;

  VideoMeta({
    this.audioBitsPerSample,
    this.audioChannels,
    this.audioFormat,
    this.audioSamplesPerSecond,
    this.bitrate,
    this.duration,
    this.fourCc,
    this.frameRate,
    this.height,
    this.width,
  });

  Map<String, dynamic> toJson() => _$VideoMetaToJson(this);

  factory VideoMeta.fromJson(Map<String, dynamic> json) =>
      _$VideoMetaFromJson(json);

  @override
  String toString() => toJson().toString();
}
