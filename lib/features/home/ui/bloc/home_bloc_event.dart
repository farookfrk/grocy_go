part of 'home_bloc_bloc.dart';

@immutable
sealed class HomeBlocEvent {}

class HomeProductWishlistButtonPressedEvent extends HomeBlocEvent {}

class HomeProductCartButtonPressedEvent extends HomeBlocEvent {}

class HomeWishlistNavigateEvent extends HomeBlocEvent {}

class HomeCartNavigateEvent extends HomeBlocEvent {}
