import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/features/cart/bloc/cart_bloc.dart';
import 'package:learning_bloc/features/cart/cart_ui/cart_product_tile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cartBloc.add(CartInitialEvent());
  }

  final CartBloc _cartBloc = CartBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping-Cart'),
      ),
      body: BlocConsumer<CartBloc, CartState>(
        bloc: _cartBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is! CartActionState,
        builder: (context, state) {
          switch (state.runtimeType) {
            case const (CartSuccessState):
              final successState = state as CartSuccessState;
              return ListView.builder(
                itemCount: successState.addedToCart.length,
                itemBuilder: (context, index) {
                  return CartProductTile(
                      cartProducts: successState.addedToCart[index],
                      cartBloc: _cartBloc);
                },
              );

            default:
              print('nigga');
          }
          return Container();
        },
      ),
    );
  }
}
