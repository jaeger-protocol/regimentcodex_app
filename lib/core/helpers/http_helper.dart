import 'dart:convert';

import 'package:http/http.dart' as http;

class HTTPHelper {
  const HTTPHelper._();

  static Future<http.Response> getRequest(
    String url, {
    Map<String, String>? headers,
  }) async {
    return http.get(Uri.parse(url), headers: headers);
  }

  static Map decodeResponse(http.Response response) {
    return json.decode(utf8.decode(response.bodyBytes)) as Map;
  }
}
