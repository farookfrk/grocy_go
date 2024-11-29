part of 'home_bloc_bloc.dart';

@immutable
sealed class HomeBlocState {}

abstract class HomeActionState extends HomeBlocState {}

class HomeBlocInitial extends HomeBlocState {}

class HomeLoadedSuccessfullyState extends HomeBlocState {}

class HomeLoadingState extends HomeBlocState {}
