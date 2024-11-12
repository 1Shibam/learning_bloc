part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

//initial state before fetching data
class HomeInitialEventState extends HomeEvent {}

//home product wish list button is clicked
class HomeAddToWishListButtonClicked extends HomeEvent {}

//home product add to cart button clicked
class HomeAddToCartButtonClicked extends HomeEvent {}

// home product wish list navigation button is clicked
class HomeNavigateToWishlistClicked extends HomeEvent {}

//home cart navigation button is clicked
class HomeNavigateToCartClicked extends HomeEvent {}
