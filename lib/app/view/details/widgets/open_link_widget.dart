import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:flutter/material.dart';

class OpenLinkWidget extends StatelessWidget {
  const OpenLinkWidget({Key? key, required this.onTap, required this.title}) : super(key: key);

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: InkWell(
        onTap: () => onTap(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: ColorPalette.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.open_in_new,
              size: 18,
              color: ColorPalette.black,
            )
          ],
        ),
      ),
    );
  }
}
