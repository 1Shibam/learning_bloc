// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

//initial state before fetching data
class HomeInitialEventState extends HomeEvent {}

//home product wish list button is clicked
class HomeAddToWishListButtonClicked extends HomeEvent {
  //this must have a product data model
  final HomeProductDataModel likedProduct;
  HomeAddToWishListButtonClicked({
    required this.likedProduct,
  });
}

//home product add to cart button clicked
class HomeAddToCartButtonClicked extends HomeEvent {
  //this must have a product data model as well
  final HomeProductDataModel cartProducts;
  HomeAddToCartButtonClicked({required this.cartProducts});
}

// home product wish list navigation button is clicked
class HomeNavigateToWishlistClicked extends HomeEvent {}

//home cart navigation button is clicked
class HomeNavigateToCartClicked extends HomeEvent {}

class HomeProductIsOutOfStock extends HomeEvent {}
