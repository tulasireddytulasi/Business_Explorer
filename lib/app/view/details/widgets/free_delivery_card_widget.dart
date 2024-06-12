import 'package:business_explorer/app/core/utils/assets_path.dart';
import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:flutter/material.dart';

class FreeDeliveryCard extends StatelessWidget {
  const FreeDeliveryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        // border: Border.all(color: black, width: 1),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[ColorPalette.silver, ColorPalette.silver2],
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                //  border: Border.all(color: black, width: 1),
                ),
            child: const Image(
              image: AssetImage(Assets.coconutTree),
              width: 36,
              height: 36,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Text(
            "Free delivery on orders above 1,000 Rs",
            style: TextStyle(
                color: ColorPalette.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
