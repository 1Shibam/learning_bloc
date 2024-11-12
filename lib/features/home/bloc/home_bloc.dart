import 'dart:async';

import 'package:bloc/bloc.dart';
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
      HomeAddToWishListButtonClicked event, Emitter<HomeState> emit) {}

  FutureOr<void> _homeAddToCartButtonClicked(
      HomeAddToCartButtonClicked event, Emitter<HomeState> emit) {}

  FutureOr<void> _homeInitialEventState(
      HomeInitialEventState event, Emitter<HomeState> emit) {}
}
