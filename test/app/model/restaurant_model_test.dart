import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test restaurant model class', () {

    final Map<String, dynamic> jsonData1 = {
      "id": "nRO136GRieGtxz18uD61DA",
      "alias": "eleven-madison-park-new-york",
      "name": "Eleven Madison Park",
      "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/N91ZB8f0d39UAJeqvb89DA/o.jpg",
      "is_closed": false,
      "url": "https://www.yelp.com/biz/eleven-madison-park-new-york?adjust_creative=BlndLX7A8uetp91dgJCDcw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=BlndLX7A8uetp91dgJCDcw",
      "review_count": 2498,
      "categories": [
        {
          "alias": "newamerican",
          "title": "New American"
        },
        {
          "alias": "french",
          "title": "French"
        },
        {
          "alias": "cocktailbars",
          "title": "Cocktail Bars"
        }
      ],
      "rating": 4.3,
      "coordinates": {
        "latitude": 40.7416907417333,
        "longitude": -73.9872074872255
      },
      "transactions": [],
      "price": "10",
      "location": {
        "address1": "11 Madison Ave",
        "address2": "",
        "address3": "",
        "city": "New York",
        "zip_code": "10010",
        "country": "US",
        "state": "NY",
        "display_address": [
          "11 Madison Ave",
          "New York, NY 10010"
        ]
      },
      "phone": "+12128890905",
      "display_phone": "(212) 889-0905",
      "distance": 4062.929570044286
    };
    final Map<String, dynamic> jsonData2 = {
      "id": "nRO136GRieGtxz18uD61DA",
      "alias": "eleven-madison-park-new-york",
      "name": null, //"Eleven Madison Park 2",
      "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/N91ZB8f0d39UAJeqvb89DA/o.jpg",
      "is_closed": false,
      "url": "https://www.yelp.com/biz/eleven-madison-park-new-york?adjust_creative=BlndLX7A8uetp91dgJCDcw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=BlndLX7A8uetp91dgJCDcw",
      "review_count": 2498,
      "categories": [
        {
          "alias": "newamerican",
          "title": "New American"
        },
        {
          "alias": "french",
          "title": "French"
        },
        {
          "alias": "cocktailbars",
          "title": "Cocktail Bars"
        }
      ],
      "rating": 4.3,
      "coordinates": {
        "latitude": 40.7416907417333,
        "longitude": -73.9872074872255
      },
      "transactions": [77],
      "price": "10",
      "location": {
        "address1": "11 Madison Ave",
        "address2": "",
        "address3": "",
        "city": "New York",
        "zip_code": "10010",
        "country": "US",
        "state": "NY",
        "display_address": [
          "11 Madison Ave",
          "New York, NY 10010"
        ]
      },
      "phone": "+12128890905",
      "display_phone": "(212) 889-0905",
      "distance": 4062.929570044286
    };

    final Map<String, dynamic> mainJson = {
      "businesses": [jsonData1, jsonData2],
      "total": 15000,
      "region": {
        "center": {
          "longitude": -73.99429321289062,
          "latitude": 40.70544486444615
        }
      }
    };

    final yelpResponse = YelpResponse.fromJson(mainJson);
    final businesses = yelpResponse.businesses;

    test('supports value comparison', () async {
      expect(
        YelpResponse.fromJson(mainJson),
        YelpResponse.fromJson(mainJson),
      );
    });

    test('gets correct item by index', () async {
      expect(
        businesses?.first,
        RestaurantModel.fromJson(jsonData1),
      );
    });

    test('gets correct item by index', () async {
      expect(
        businesses?[1],
        RestaurantModel.fromJson(jsonData2),
      );
    });

  });
}