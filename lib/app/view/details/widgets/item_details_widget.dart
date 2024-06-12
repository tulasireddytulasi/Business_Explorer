import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/widget/dash_line_divider_widget.dart';
import 'package:flutter/material.dart';

class ItemDetailsWidget extends StatefulWidget {
  const ItemDetailsWidget({Key? key}) : super(key: key);

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
            children: const [
              Icon(
                Icons.timer,
                color: ColorPalette.green,
                size: 16,
              ),
              SizedBox(width: 10),
              Text(
                "Delivery in 31 min",
                style: TextStyle(
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
                    "Delivery at Home",
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
            children: const [
              Icon(
                Icons.phone_in_talk_outlined,
                color: ColorPalette.black,
                size: 16,
              ),
              SizedBox(width: 10),
              Text(
                "+91-8374998490",
                style: TextStyle(
                    color: ColorPalette.grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DashLineDivider(color: Colors.grey),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Item total",
                style: TextStyle(
                  fontSize: 12,
                  color: ColorPalette.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹196.00",
                style: TextStyle(
                  fontSize: 12,
                  color: ColorPalette.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coupon - (FLAT20)",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹-80.00",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Delivery charges",
                style: TextStyle(
                  fontSize: 12,
                  color: ColorPalette.grey1,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "₹26.00",
                style: TextStyle(
                  fontSize: 12,
                  color: ColorPalette.grey1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Govt. taxes ",
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorPalette.grey1,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.info_outline,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "₹41.21",
                style: TextStyle(
                  fontSize: 12,
                  color: ColorPalette.grey1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const DashLineDivider(color: Colors.grey),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Grand total",
                style: TextStyle(
                  fontSize: 16,
                  color: ColorPalette.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹183.21",
                style: TextStyle(
                  fontSize: 16,
                  color: ColorPalette.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
