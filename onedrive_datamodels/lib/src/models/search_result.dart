/// The `SearchResult` resource indicates than an item is the response to a search query.
class SearchResult {
  /// A callback URL that can be used to record telemetry information.
  /// The application should issue a GET on this URL if the user interacts
  /// with this item to improve the quality of results.
  final String onClickTelemetryUrl;

  SearchResult({this.onClickTelemetryUrl});

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      SearchResult(onClickTelemetryUrl: json['onClickTelemetryUrl']);

  Map<String, dynamic> toJson() => {'onClickTelemetryUrl': onClickTelemetryUrl};

  @override
  String toString() => toJson().toString();
}
