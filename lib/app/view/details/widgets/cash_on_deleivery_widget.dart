import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CashOnDeliveryWidget extends StatelessWidget {
  const CashOnDeliveryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: ColorPalette.black,
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10),
        child: const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.money_outlined,
                  size: 22,
                  color: ColorPalette.black,
                ),
                SizedBox(width: 2),
                Text(
                  "Pay using",
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorPalette.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: Constants.montserratRegular,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_up_outlined,
                  size: 22,
                  color: ColorPalette.black,
                ),
              ],
            ),
            Text(
              "Cash on Delivery",
              style: TextStyle(
                fontSize: 12,
                color: ColorPalette.black,
                fontWeight: FontWeight.normal,
                fontFamily: Constants.montserratRegular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
