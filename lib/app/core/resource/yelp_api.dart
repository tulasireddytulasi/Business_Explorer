import 'package:business_explorer/app/core/resource/api_services.dart';
import 'package:http/http.dart';

class YelpAPIServices {
  static Future<Response> getItemsListAPI() async {
    const String getItemsURL = "businesses/search?location=NYC";
    try {
      Response response = await getMethod(getItemsURL);
      return response;
    } catch (error) {
      rethrow;
    }
  }
}
