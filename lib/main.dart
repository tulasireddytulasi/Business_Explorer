// import 'dart:ui';

import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/view/details/details_page.dart';
import 'package:business_explorer/app/view/home/home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessExplorer());
}

class BusinessExplorer extends StatefulWidget {
  const BusinessExplorer({super.key});

  @override
  State<BusinessExplorer> createState() => _BusinessExplorerState();
}

class _BusinessExplorerState extends State<BusinessExplorer> {

  late RestaurantModel restaurantModel;

  @override
  void initState() {
    super.initState();
    restaurantModel = RestaurantModel();
   // task1();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Explorer',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/cart': (_) => DetailsPage(restaurantModel: restaurantModel),
      },
    );
  }

  void task1() {
    try{
      final Map<String, dynamic> jsonData = {
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
      final Map<String, dynamic> jsonData3 = {
        "businesses": [jsonData, jsonData2],
        "total": 15000,
        "region": {
          "center": {
            "longitude": -73.99429321289062,
            "latitude": 40.70544486444615
          }
        }
      };

      restaurantModel = RestaurantModel.fromJson(jsonData);
      print("Data: ${restaurantModel.name}");

      final yelpResponse = YelpResponse.fromJson(jsonData3);
      final businesses = yelpResponse.businesses;
      final total = yelpResponse.total;
      final region = yelpResponse.region;
      print("businesses Data : ${businesses}, \nyelpResponse name 3: ${yelpResponse.businesses?[1].transactions?.first ?? ""}");

    }catch(e, s){
      print("Data error: $e");
      print("Data stack: $s");
    }
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  /// Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}