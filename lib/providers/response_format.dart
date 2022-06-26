class ResponseFormat {
  final int? statusCode;
  final String? message;
  final dynamic data;

  ResponseFormat({this.message, this.statusCode, this.data});
}