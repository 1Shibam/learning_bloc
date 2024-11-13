part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class CartInitialEvent extends CartEvent {}

//remove item from the cart event

class CartRemoveItemFromCart extends CartEvent {}
