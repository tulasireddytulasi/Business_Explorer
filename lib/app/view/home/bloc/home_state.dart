part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class RestaurantsLoading extends HomeState {}

class RestaurantsLoaded extends HomeState {
  const RestaurantsLoaded({required this.businesses});

  final List<RestaurantModel> businesses;

  @override
  List<Object> get props => [businesses];
}

class RestaurantsError extends HomeState {}
