import 'package:json_annotation/json_annotation.dart';

import '../constants/enums.dart';
import '../helpers/publication_level_helpers.dart';

part 'publication_facet.g.dart';

/// The `PublicationFacet` resource provides details on the published status
/// of a driveItemVersion or driveItem resource.
@JsonSerializable()
class PublicationFacet {
  /// The state of publication for this document. Either published or checkout.
  @JsonKey(fromJson: publicationLevelFromJson, toJson: publicationLevelToJson)
  final PublicationLevel level;

  /// The unique identifier for the version that is visible to the current caller.
  final String versionId;

  PublicationFacet({
    this.level,
    this.versionId,
  });

  Map<String, dynamic> toJson() => _$PublicationFacetToJson(this);

  factory PublicationFacet.fromJson(Map<String, dynamic> json) =>
      _$PublicationFacetFromJson(json);

  @override
  String toString() => toJson().toString();
}
