import 'package:business_explorer/app/core/utils/app_styles.dart';
import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/constants.dart';
import 'package:business_explorer/app/widget/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BusinessCardWidget extends StatelessWidget {
  const BusinessCardWidget({
    super.key,
    required this.name,
    required this.rating,
    required this.distance,
    required this.imgURL,
    required this.price,
  });

  final String name;
  final String price;
  final String rating;
  final String distance;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/cart'),
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: CachedNetworkImage(
                imageUrl: imgURL,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: Colors.green)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: AppStyles.titleBig,
                        ),
                        const SizedBox(height: 2),
                        RichText(
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: " $distance",
                                style: AppStyles.bodyMedium.copyWith(
                                  color: ColorPalette.grey,
                                  fontFamily: Constants.montserratMedium,
                                ),
                              ),
                              TextSpan(
                                text: "    .    ",
                                style: AppStyles.bodyMedium.copyWith(
                                  color: ColorPalette.grey,
                                  fontFamily: Constants.montserratMedium,
                                ),
                              ),
                              TextSpan(
                                text: price,
                                style: AppStyles.bodyMedium.copyWith(
                                  color: ColorPalette.grey,
                                  fontFamily: Constants.montserratMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: RatingWidget(rating: rating),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
