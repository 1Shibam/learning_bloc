import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:learning_bloc/data/cart_data.dart';
import 'package:learning_bloc/data/grocery_data.dart';
import 'package:learning_bloc/data/wishlist_data.dart';
import 'package:learning_bloc/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEventState>(_homeInitialEventState);
    on<HomeNavigateToWishlistClicked>(_homeNavigateToWishlistClicked);
    on<HomeNavigateToCartClicked>(_homeNavigateToCartClicked);
    on<HomeAddToWishListButtonClicked>(_homeAddToWishListButtonClicked);
    on<HomeAddToCartButtonClicked>(_homeAddToCartButtonClicked);
    on<HomeProductIsOutOfStock>(_homeProductIsOutOfStock);
  }
  FutureOr<void> _homeInitialEventState(
      HomeInitialEventState event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeLoadingSuccessState(
        products: GroceryData.groceryProducts
            .map((e) => HomeProductDataModel(
                name: e['name'],
                id: e['id'],
                category: e['category'],
                inStock: e['inStock'],
                quantity: e['quantity'],
                price: e['price'],
                imageUrl: e['imageUrl'],
                seller: e['seller']))
            .toList()));
  }

  FutureOr<void> _homeNavigateToWishlistClicked(
      HomeNavigateToWishlistClicked event, Emitter<HomeState> emit) {
    print('Navigation to whishlist page is invoked!!');
    emit(HomeNavigateToWishlistPageAction());
  }

  FutureOr<void> _homeNavigateToCartClicked(
      HomeNavigateToCartClicked event, Emitter<HomeState> emit) {
    print('Navigation to cart page is invoked!!');
    emit(HomeNavigateToCartPageAction());
  }

  FutureOr<void> _homeAddToWishListButtonClicked(
      HomeAddToWishListButtonClicked event, Emitter<HomeState> emit) {
    print('Item addition to wishlist Invoked!!');
    wishListItems.add(event.likedProduct);
    emit(HomeProductAddedtowishListActionState());
  }

  FutureOr<void> _homeAddToCartButtonClicked(
      HomeAddToCartButtonClicked event, Emitter<HomeState> emit) {
    print('Item addition to shopping cart Invoked!!');
    cartItems.add(event.cartProducts);
    emit(HomeProductAddedtoCartActionState());
  }

  FutureOr<void> _homeProductIsOutOfStock(
      HomeProductIsOutOfStock event, Emitter<HomeState> emit) {}
}
