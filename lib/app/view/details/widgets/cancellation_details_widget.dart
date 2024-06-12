import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:flutter/material.dart';

class CancellationInfoWidget extends StatefulWidget {
  const CancellationInfoWidget({Key? key}) : super(key: key);

  @override
  State<CancellationInfoWidget> createState() => _CancellationInfoWidgetState();
}

class _CancellationInfoWidgetState extends State<CancellationInfoWidget> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Cancellation Policy",
            style: TextStyle(
                color: ColorPalette.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "100% cancellation fee will be applicable "
            "if you decide to cancel the order anytime after order placement.",
            style: TextStyle(
                color: ColorPalette.grey1, fontSize: 12, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
