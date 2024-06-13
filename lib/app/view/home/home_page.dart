import 'package:business_explorer/app/core/utils/color_palette.dart';
import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/view/home/bloc/home_bloc.dart';
import 'package:business_explorer/app/widget/business_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  void initState() {
    super.initState();
    homeBloc.add(LoadItems());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorPalette.blueGrey200,
        leading: const Icon(Icons.home, color: ColorPalette.white, size: 28),
        title: const Text(
          "Yelp Business Explorer",
          style: TextStyle(fontSize: 22, color: ColorPalette.white),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: homeBloc,
        builder: (context, state) {
          switch (state.runtimeType) {
            case ItemsLoading:
              return const Center(
                child: CircularProgressIndicator(color: ColorPalette.black),
              );
            case ItemsLoaded:
              final successState = state as ItemsLoaded;
              List<RestaurantModel> restaurantModel = successState.businesses;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(height: 6),
                        itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return BusinessCardWidget(restaurantModel: restaurantModel[index]);
                        },
                      ),
                    ),
                  ],
                ),
              );
            case ItemsError:
              return const Center(
                child: Text("Error"),
              );
            default:
              return const Center(
                child: Text("Initial"),
              );
          }
        },
      ),
    );
  }
}
