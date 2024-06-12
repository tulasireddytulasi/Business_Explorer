import 'package:business_explorer/app/core/utils/app_styles.dart';
import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rating});

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(04),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 0, right: 4),
            child: Text(
              rating,
              textAlign: TextAlign.center,
              style: AppStyles.bodySmall.copyWith(
                color: ColorPalette.white,
                fontFamily: Constants.montserratMedium,
              ),
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 10,
          ),
        ],
      ),
    );
  }
}
