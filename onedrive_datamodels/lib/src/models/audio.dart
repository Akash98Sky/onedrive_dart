import 'package:json_annotation/json_annotation.dart';

part 'audio.g.dart';

///
/// The Audio resource groups audio-related properties on an item
/// into a single structure.
///
@JsonSerializable()
class AudioMeta {
  /// The title of the album for this audio file.
  final String album;

  /// The artist named on the album for the audio file.
  final String albumArtist;

  /// The performing artist for the audio file.
  final String artist;

  /// Bitrate expressed in kbps.
  final int bitrate;

  /// The name of the composer of the audio file.
  final String composers;

  /// Copyright information for the audio file.
  final String copyright;

  /// The number of the disc this audio file came from.
  final int disc;

  /// The total number of discs in this album.
  final int discCount;

  /// Duration of the audio file, expressed in milliseconds
  final int duration;

  /// The genre of this audio file.
  final String genre;

  /// Indicates if the file is protected with digital rights management.
  final bool hasDrm;

  /// Indicates if the file is encoded with a variable bitrate.
  final bool isVariableBitrate;

  /// The title of the audio file.
  final String title;

  /// The number of the track on the original disc for this audio file.
  final int track;

  /// The total number of tracks on the original disc for this audio file.
  final int trackCount;

  ///	The year the audio file was recorded.
  final int year;

  AudioMeta({
    this.album,
    this.albumArtist,
    this.artist,
    this.bitrate,
    this.composers,
    this.copyright,
    this.disc,
    this.discCount,
    this.duration,
    this.genre,
    this.hasDrm,
    this.isVariableBitrate,
    this.title,
    this.track,
    this.trackCount,
    this.year,
  });

  factory AudioMeta.fromJson(Map<String, dynamic> json) =>
      _$AudioMetaFromJson(json);

  Map<String, dynamic> toJson() => _$AudioMetaToJson(this);

  @override
  String toString() => toJson().toString();
}
