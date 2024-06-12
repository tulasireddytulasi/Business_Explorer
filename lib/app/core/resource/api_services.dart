import 'package:business_explorer/app/core/resource/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> getMethod(String url) async {
  try {
    Response response = await http.get(
      Uri.parse(ApiConstants.baseUrl + url),
      headers: await _authorizationHeader(),
    );
    return response;
  } catch (error) {
    rethrow;
  }
}

Future<Map<String, String>> _authorizationHeader() async {
  return {
    "content-type": "application/json",
    "accept": "application/json",
    'Authorization': 'Bearer ${ApiConstants.bearerToken}',
  };
}
