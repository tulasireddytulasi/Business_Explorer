part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

final class LoadRestaurants extends HomeEvent {
  @override
  List<Object> get props => [];
}