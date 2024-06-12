part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class ItemsLoading extends HomeState {}

class ItemsLoaded extends HomeState {
  const ItemsLoaded({required this.businesses});

  final List<RestaurantModel> businesses;

  @override
  List<Object> get props => [businesses];
}

class ItemsError extends HomeState {}
