class OneDriveAPIException implements Exception {
  static final int serialVersionUID = 1;

  final String message;

  final int responseCode;

  final String response;

  final Exception cause;

  OneDriveAPIException(
    this.message, {
    this.responseCode = -1,
    this.response,
    this.cause,
  });

  @override
  String toString() {
    var msg = 'OneDriveAPIException : $message';
    if (cause != null) {
      msg += '\n${cause.toString()}';
    }
    return msg;
  }
}
