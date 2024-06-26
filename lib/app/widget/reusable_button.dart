import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  final String text;
  final void Function() callingAPI;
  final double buttonWidth;
  final double topPadding;
  final double bottomPAdding;
  final Color color;
  final double borderRadius;
  final Widget? childWidget;
  const ProceedButton({
    Key? key,
    required this.text,
    required this.callingAPI,
    required this.buttonWidth,
    this.topPadding = 14,
    this.bottomPAdding = 14,
    this.color = Colors.green,
    this.borderRadius = 25,
    this.childWidget,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: callingAPI,
        child: Container(
          alignment: Alignment.center,
          width: buttonWidth,
          padding: EdgeInsets.only(bottom: bottomPAdding, top: topPadding),
          child: childWidget ??
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: Constants.montserratRegular,
                  color: ColorPalette.white,
                ),
              ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
    );
  }
}
