

import 'package:business_explorer/app/core/resource/yelp_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

void main(){

//==========================================================================
// Get List of Restaurants
//==========================================================================

  test("GET: Get List of Restaurants", () async {
    Response response = await YelpAPIServices.getItemsListAPI();
    expect(response.statusCode, 200);
  });
}
