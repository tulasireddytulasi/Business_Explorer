import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/widget/business_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorPalette.blueGrey200,
        leading: const Icon(Icons.home, color: ColorPalette.white),
        title: const Text(
          "Business Explorer App",
          style: TextStyle(fontSize: 18, color: ColorPalette.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 6),
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const BusinessCardWidget(
                    name: "Eleven Madison Park",
                    price: "₹300 Rs for One",
                    imgURL: "https://s3-media1.fl.yelpcdn.com/bphoto/iLGfPaPnRkNAxODW9PZ_Yg/o.jpg",
                    rating: "4.3",
                    distance: "7.4 KM",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
