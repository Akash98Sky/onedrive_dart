// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioMeta _$AudioMetaFromJson(Map<String, dynamic> json) {
  return AudioMeta(
    album: json['album'] as String,
    albumArtist: json['albumArtist'] as String,
    artist: json['artist'] as String,
    bitrate: json['bitrate'] as int,
    composers: json['composers'] as String,
    copyright: json['copyright'] as String,
    disc: json['disc'] as int,
    discCount: json['discCount'] as int,
    duration: json['duration'] as int,
    genre: json['genre'] as String,
    hasDrm: json['hasDrm'] as bool,
    isVariableBitrate: json['isVariableBitrate'] as bool,
    title: json['title'] as String,
    track: json['track'] as int,
    trackCount: json['trackCount'] as int,
    year: json['year'] as int,
  );
}

Map<String, dynamic> _$AudioMetaToJson(AudioMeta instance) => <String, dynamic>{
      'album': instance.album,
      'albumArtist': instance.albumArtist,
      'artist': instance.artist,
      'bitrate': instance.bitrate,
      'composers': instance.composers,
      'copyright': instance.copyright,
      'disc': instance.disc,
      'discCount': instance.discCount,
      'duration': instance.duration,
      'genre': instance.genre,
      'hasDrm': instance.hasDrm,
      'isVariableBitrate': instance.isVariableBitrate,
      'title': instance.title,
      'track': instance.track,
      'trackCount': instance.trackCount,
      'year': instance.year,
    };
