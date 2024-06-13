import 'package:business_explorer/app/core/utils/app_styles.dart';
import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/core/utils/common_functions.dart';
import 'package:business_explorer/app/core/utils/constants.dart';
import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/view/details/widgets/open_link_widget.dart';
import 'package:business_explorer/app/view/details/widgets/item_details_widget.dart';
import 'package:business_explorer/app/widget/rating_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final RestaurantModel restaurantModel = ModalRoute.of(context)?.settings.arguments as RestaurantModel;

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        if (didPop) {
          // If back navigation was allowed, do nothing.
          return;
        }
      },
      child: Scaffold(
        backgroundColor: ColorPalette.liteWhite,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: ColorPalette.blueGrey200,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_ios_new_rounded, color: ColorPalette.white),
          ),
          title: const Text(
            "Details Screen",
            style: TextStyle(fontSize: 22, color: ColorPalette.white),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                              imageUrl: restaurantModel.image_url ?? "",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              color: (restaurantModel.is_closed ?? false) ? ColorPalette.grey : null,
                              colorBlendMode: (restaurantModel.is_closed ?? false) ? BlendMode.saturation : null,
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
                                  restaurantModel.name ?? "",
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: AppStyles.titleBig,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: RatingWidget(rating: restaurantModel.rating.toString()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  OpenLinkWidget(title: "Open Link", onTap: (){openExternalLink(link: restaurantModel.url ?? "");}),
                  const SizedBox(height: 16),
                  ItemDetailsWidget(restaurantModel: restaurantModel),
                  const SizedBox(height: 16),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: ColorPalette.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List<Widget>.generate(
                          restaurantModel.categories?.length ?? 0,
                          (index) {
                            final bool isLast = (restaurantModel.categories!.length -1) == index;
                            return Container(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Text(
                              "${restaurantModel.categories![index].title ?? ""}${isLast ? "" : ","}",
                              style: const TextStyle(
                                color: ColorPalette.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );}
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  OpenLinkWidget(title: "Open Map Link", onTap: (){
                        openMap(
                          latitude: restaurantModel.coordinates?.latitude ?? 0,
                          longitude: restaurantModel.coordinates?.longitude ?? 0,
                        );
                      }),
                  const SizedBox(height: 200),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
