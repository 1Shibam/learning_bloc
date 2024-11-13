part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

//home action states
abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

//home screen loading state
class HomeLoadingState extends HomeState {}

//home Screen success state
class HomeLoadingSuccessState extends HomeState {
  //when it is succesfull we need the list of products
  final List<HomeProductDataModel> products;

  HomeLoadingSuccessState({required this.products});
}

// if some error occured in loadin the state
class HomeLoadingFailed extends HomeState {}

//product is out of stock state can not add to the cart
class HomeProductAddedtoCartFailed extends HomeState {}
//state when item is out of stock

//navigating to wishlist page

class HomeNavigateToWishlistPageAction extends HomeActionState {}

//navigating to cart page
class HomeNavigateToCartPageAction extends HomeActionState {}

//item added to the wish list action state
class HomeProductAddedtoCartActionState extends HomeActionState {}

//item added to the cart action state
class HomeProductAddedtowishListActionState extends HomeActionState {}
