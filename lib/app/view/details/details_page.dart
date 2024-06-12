import 'package:business_explorer/app/core/utils/app_styles.dart';
import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/constants.dart';
import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/view/details/widgets/cancellation_details_widget.dart';
import 'package:business_explorer/app/view/details/widgets/coupons_widget.dart';
import 'package:business_explorer/app/view/details/widgets/delivery_address_card.dart';
import 'package:business_explorer/app/view/details/widgets/free_delivery_card_widget.dart';
import 'package:business_explorer/app/view/details/widgets/item_details_widget.dart';
import 'package:business_explorer/app/widget/rating_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.restaurantModel});
  final RestaurantModel restaurantModel;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.liteWhite,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorPalette.blueGrey200,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pushNamedAndRemoveUntil("/", (Route<dynamic> route) => false),
          child: const Icon(Icons.arrow_back, color: ColorPalette.white),
        ),
        title: const Text(
          "My Cart",
          style: TextStyle(fontSize: 18, color: ColorPalette.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const FreeDeliveryCard(),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: ColorPalette.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                              child: CachedNetworkImage(
                                imageUrl: widget.restaurantModel.image_url ?? "",
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator(color: Colors.green),
                                ),
                                errorWidget: (context, url, error) => Row(
                                  children: [
                                    const Icon(Icons.error),
                                    const SizedBox(width: 10),
                                    Text(
                                      "No Image",
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: AppStyles.bodyMedium.copyWith(fontFamily: Constants.montserratMedium),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 70,
                                  child: Text(
                                    widget.restaurantModel.name ?? "",
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                    style: AppStyles.titleBig,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: RatingWidget(rating: "4.3"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const CouponsWidget(),
                    const SizedBox(height: 16),
                    const ItemDetailsWidget(),
                    const SizedBox(height: 16),
                    const CancellationInfoWidget(),
                    const SizedBox(height: 200),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DeliveryAddressCard(price: widget.restaurantModel.price  ?? "0", address: widget.restaurantModel.location),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
