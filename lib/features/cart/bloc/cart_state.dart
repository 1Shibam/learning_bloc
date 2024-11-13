part of 'cart_bloc.dart';

@immutable
sealed class CartState {}

abstract class CartActionState extends CartState {}

final class CartInitial extends CartState {}

//cart success state

class CartSuccessState extends CartState {
  final List<HomeProductDataModel> addedToCart;

  CartSuccessState({required this.addedToCart});
}

//cart loading state

//cart loading failed state
