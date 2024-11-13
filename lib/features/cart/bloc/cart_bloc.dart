import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:learning_bloc/data/cart_data.dart';
import 'package:learning_bloc/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(_cartInitialEvent);
  }

  FutureOr<void> _cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(addedToCart: cartItems));
  }
}
