// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoMeta _$VideoMetaFromJson(Map<String, dynamic> json) {
  return VideoMeta(
    audioBitsPerSample: json['audioBitsPerSample'] as int,
    audioChannels: json['audioChannels'] as int,
    audioFormat: json['audioFormat'] as String,
    audioSamplesPerSecond: json['audioSamplesPerSecond'] as int,
    bitrate: json['bitrate'] as int,
    duration: json['duration'] as int,
    fourCc: json['fourCc'] as String,
    frameRate: (json['frameRate'] as num)?.toDouble(),
    height: json['height'] as int,
    width: json['width'] as int,
  );
}

Map<String, dynamic> _$VideoMetaToJson(VideoMeta instance) => <String, dynamic>{
      'audioBitsPerSample': instance.audioBitsPerSample,
      'audioChannels': instance.audioChannels,
      'audioFormat': instance.audioFormat,
      'audioSamplesPerSecond': instance.audioSamplesPerSecond,
      'bitrate': instance.bitrate,
      'duration': instance.duration,
      'fourCc': instance.fourCc,
      'frameRate': instance.frameRate,
      'height': instance.height,
      'width': instance.width,
    };
