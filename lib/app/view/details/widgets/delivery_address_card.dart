import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/view/details/widgets/cash_on_deleivery_widget.dart';
import 'package:business_explorer/app/view/details/widgets/place_order_button_widget.dart';
import 'package:business_explorer/app/widget/dash_line_divider_widget.dart';
import 'package:flutter/material.dart';

class DeliveryAddressCard extends StatefulWidget {
  const DeliveryAddressCard({Key? key, required this.price, required this.address}) : super(key: key);
  final String price;
  final Location? address;

  @override
  State<DeliveryAddressCard> createState() => _DeliveryAddressCardState();
}

class _DeliveryAddressCardState extends State<DeliveryAddressCard> {
  String address = "";

  @override
  void initState() {
    super.initState();
    getAddress();
    setState(() {});
  }

  getAddress(){
    try{
      address = "${widget.address?.display_address!.first ?? ""}, ${widget.address!.display_address![1]}";
    }catch(e, s){
      print("getAddress error: $e");
      print("getAddress stack: $s");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 0, right: 0),
      decoration: const BoxDecoration(
        color: ColorPalette.white,
        boxShadow: [
          BoxShadow(
            color: ColorPalette.divider2,
            blurRadius: 6.0,
            spreadRadius: 0.0,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          size: 18,
                          color: ColorPalette.red,
                        ),
                      ),
                      TextSpan(
                        text: " Delivery to:",
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorPalette.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text(
                    "Change",
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorPalette.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 0, bottom: 10, left: 34),
            child: Text(
              address,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                color: ColorPalette.black,
              ),
            ),
          ),
          const DashLineDivider(color: Colors.grey, dashWidth: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CashOnDeliveryWidget(),
              PlaceOrderButton(price: widget.price),
            ],
          ),
        ],
      ),
    );
  }
}
