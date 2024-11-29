import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
    on<HomeProductWishlistButtonPressedEvent>(
        homeProductWishlistButtonPressedEvent);
    on<HomeProductCartButtonPressedEvent>(homeProductCartButtonPressedEvent);
  }

  FutureOr<void> homeProductWishlistButtonPressedEvent(
      HomeProductWishlistButtonPressedEvent event,
      Emitter<HomeBlocState> emit) {
    print('wishList pressed');
  }

  FutureOr<void> homeProductCartButtonPressedEvent(
      HomeProductCartButtonPressedEvent event, Emitter<HomeBlocState> emit) {
    print('cart pressed');
  }
}
