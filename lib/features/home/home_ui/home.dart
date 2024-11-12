import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/features/cart/cart_ui/cart_page.dart';
import 'package:learning_bloc/features/home/bloc/home_bloc.dart';
import 'package:learning_bloc/features/wishlist/wishlist_ui/wishlist_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc _homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: _homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageAction) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ));
        } else if (state is HomeNavigateToWishlistPageAction) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WishlistPage(),
              ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              IconButton(
                  alignment: Alignment.center,
                  iconSize: 28,
                  color: Colors.white,
                  onPressed: () {
                    //navigate to the wish list page
                    _homeBloc.add(HomeNavigateToWishlistClicked());
                  },
                  icon: const Icon(Icons.favorite_outline_outlined)),
              IconButton(
                  color: Colors.white,
                  alignment: Alignment.center,
                  iconSize: 28,
                  onPressed: () {
                    //navigation to the cart page
                    _homeBloc.add(HomeNavigateToCartClicked());
                  },
                  icon: const Icon(Icons.shopping_cart_outlined))
            ],
            elevation: 10,
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 0, 150, 105),
            title: const Text(
              'Home-Page',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
