import 'package:json_annotation/json_annotation.dart';

part 'photo_meta.g.dart';

///
/// The `Photo` resource provides photo and camera properties,
/// for example, EXIF metadata, on a driveItem.
///
@JsonSerializable()
class PhotoMeta {
  /// Camera manufacturer.
  final String cameraMake;

  /// Camera model.
  final String cameraModel;

  /// The denominator for the exposure time fraction from the camera.
  final double exposureDenominator;

  /// The numerator for the exposure time fraction from the camera.
  final double exposureNumerator;

  /// The F-stop value from the camera.
  final double fNumber;

  /// The focal length from the camera.
  final double focalLength;

  /// The ISO value from the camera.
  final int iso;

  /// Represents the date and time the photo was taken.
  final String takenDateTime;

  PhotoMeta({
    this.cameraMake,
    this.cameraModel,
    this.exposureDenominator,
    this.exposureNumerator,
    this.fNumber,
    this.focalLength,
    this.iso,
    this.takenDateTime,
  });

  Map<String, dynamic> toJson() => _$PhotoMetaToJson(this);

  factory PhotoMeta.fromJson(Map<String, dynamic> json) =>
      _$PhotoMetaFromJson(json);

  @override
  String toString() => toJson().toString();
}
