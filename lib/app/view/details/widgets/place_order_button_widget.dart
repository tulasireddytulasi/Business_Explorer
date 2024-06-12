import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/constants.dart';
import 'package:business_explorer/app/widget/reusable_button.dart';
import 'package:flutter/material.dart';

class PlaceOrderButton extends StatefulWidget {
  const PlaceOrderButton({Key? key, required this.price}) : super(key: key);
  final String price;

  @override
  _PlaceOrderButtonState createState() => _PlaceOrderButtonState();
}

class _PlaceOrderButtonState extends State<PlaceOrderButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ProceedButton(
        text: "Place Order",
        buttonWidth: 178,
        callingAPI: (){},
        // callingAPI: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const LottieScreen()),
        // ),
        color: ColorPalette.lightRed,
        borderRadius: 4,
        childWidget: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  //"₹183.21",
                  widget.price,
                  style: const TextStyle(
                    fontSize: 16,
                    color: ColorPalette.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: Constants.montserratRegular,
                  ),
                ),
                const Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorPalette.divider2,
                    fontWeight: FontWeight.normal,
                    fontFamily: Constants.montserratRegular,
                  ),
                )
              ],
            ),
            Container(
              child: RichText(
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Place Order  ",
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorPalette.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: Constants.montserratRegular,
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                        color: ColorPalette.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
