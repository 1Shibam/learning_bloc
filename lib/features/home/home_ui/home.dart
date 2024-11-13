import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/features/cart/cart_ui/cart_page.dart';
import 'package:learning_bloc/features/home/bloc/home_bloc.dart';
import 'package:learning_bloc/features/home/home_ui/product_tile_widget.dart';
import 'package:learning_bloc/features/wishlist/wishlist_ui/wishlist_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeBloc.add(HomeInitialEventState());
  }

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
        } else if (state is HomeProductAddedtowishListActionState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Item Adde to the wishlist!!'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
          ));
        } else if (state is HomeProductAddedtoCartActionState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Item Added to the cart!!'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
          ));
        } else if (state is HomeProductIsOutOfStock) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('This item is out of Stock for now!!'),
            action: SnackBarAction(
                label: 'Remind when Available',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('You will be reminded!!'),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 2),
                  ));
                }),
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 2),
          ));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case const (HomeLoadingState):
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            );

          case const (HomeLoadingFailed):
            return const Scaffold(
              body: Center(
                child: Text('An Unfortunate Error Occured!!'),
              ),
            );

          case const (HomeLoadingSuccessState):
            final successState = state as HomeLoadingSuccessState;
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
                backgroundColor: const Color.fromARGB(255, 0, 150, 105),
                title: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Grocery',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              body: ListView.builder(
                itemCount: successState.products.length,
                itemBuilder: (context, index) {
                  return ProductTileWidget(
                      homeBloc: _homeBloc,
                      homeProductDataModel: successState.products[index]);
                },
              ),
            );

          default:
            return const SizedBox(
              height: 100,
            );
        }
      },
    );
  }
}
