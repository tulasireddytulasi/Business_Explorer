import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/common_functions.dart';
import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/widget/dash_line_divider_widget.dart';
import 'package:flutter/material.dart';

class ItemDetailsWidget extends StatefulWidget {
  const ItemDetailsWidget({Key? key, required this.restaurantModel}) : super(key: key);
  final RestaurantModel restaurantModel;

  @override
  State<ItemDetailsWidget> createState() => _ItemDetailsWidgetState();
}

class _ItemDetailsWidgetState extends State<ItemDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        //  border: Border.all(color: black, width: 1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.reviews_rounded,
                color: ColorPalette.black,
                size: 16,
              ),
              const SizedBox(width: 10),
              Text(
                "Review count: ${widget.restaurantModel.review_count ?? ""}",
                style: const TextStyle(
                    color: ColorPalette.grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DashLineDivider(color: Colors.grey),
          const SizedBox(height: 10),
           Row(
            children: [
              const Icon(
                Icons.timer,
                color: ColorPalette.black,
                size: 16,
              ),
              const SizedBox(width: 10),
              Text(
                "Distance of ${getDistance(distanceInMeters: widget.restaurantModel.distance ?? 0)} km",
                style: const TextStyle(
                    color: ColorPalette.grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DashLineDivider(color: Colors.grey),
          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.home,
                color: ColorPalette.black,
                size: 16,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Address:",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.grey, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "11 Madison Ave, New York, NY 10010",
                    style: TextStyle(
                        color: ColorPalette.grey, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DashLineDivider(color: Colors.grey),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.phone_in_talk_outlined,
                color: ColorPalette.black,
                size: 16,
              ),
              const SizedBox(width: 10),
              Text(
                "Display Phone No: ${widget.restaurantModel.display_phone ?? "NA"}",
                style: const TextStyle(
                    color: ColorPalette.grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DashLineDivider(color: Colors.grey),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.phone_in_talk_outlined,
                color: ColorPalette.black,
                size: 16,
              ),
              const SizedBox(width: 10),
              Text(
                "Phone No: ${widget.restaurantModel.phone ?? "NA"}",
                style: const TextStyle(
                    color: ColorPalette.grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DashLineDivider(color: Colors.grey),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
