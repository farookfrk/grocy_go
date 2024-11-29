import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocy_go/core/color_palatte.dart';
import 'package:grocy_go/features/home/ui/bloc/home_bloc_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBlocBloc homeBlocBloc = HomeBlocBloc();
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homeBlocBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeProductWishlistButtonPressedEvent) {}
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'GrocyGo',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: ColorPalatte.textColor),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    homeBlocBloc.add(HomeProductWishlistButtonPressedEvent());
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    color: ColorPalatte.iconColor,
                  )),
              IconButton(
                  onPressed: () {
                    homeBlocBloc.add(HomeProductCartButtonPressedEvent());
                  },
                  icon: const Icon(Icons.shopping_bag_outlined,
                      color: ColorPalatte.iconColor))
            ],
          ),
          body: Container(),
        );
      },
    );
  }
}
