import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:business_explorer/app/core/resource/yelp_api.dart';
import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:http/http.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(ItemsLoading()) {
    on<LoadItems>(loadItems);
  }

  FutureOr<void> loadItems(LoadItems event, Emitter<HomeState> emit) async {
    emit(ItemsLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      Response response = await getItemsListAPI();
      if (response.statusCode == 200) {
        final yelpResponse = YelpResponse.fromJson(json.decode(response.body));
        final List<RestaurantModel> businesses = yelpResponse.businesses ?? [];
        print("businesses: ${businesses.first.name}");
        emit(ItemsLoaded(businesses: businesses));
      }
    } catch (e) {
      emit(ItemsError());
    }
  }
}
