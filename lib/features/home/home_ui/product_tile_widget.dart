import 'package:flutter/material.dart';
import 'package:learning_bloc/features/home/bloc/home_bloc.dart';
import 'package:learning_bloc/features/home/models/home_product_data_model.dart';

class ProductTileWidget extends StatelessWidget {
  final HomeProductDataModel homeProductDataModel;
  final HomeBloc homeBloc;
  const ProductTileWidget(
      {super.key, required this.homeProductDataModel, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black, width: 2)),
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(homeProductDataModel.imageUrl),
                    fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeProductDataModel.name,
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    homeProductDataModel.category,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    homeProductDataModel.quantity,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Text(
                homeProductDataModel.inStock ? 'in Stock' : 'out of stock',
                style: TextStyle(
                    fontSize: 24,
                    color: homeProductDataModel.inStock
                        ? Colors.green
                        : Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${homeProductDataModel.price} \$',
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                homeProductDataModel.seller,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              // Text(homeProductDataModel.seller),
              IconButton(
                  alignment: Alignment.center,
                  iconSize: 32,
                  color: Colors.black,
                  onPressed: () {
                    //navigate to the wish list page
                    homeBloc.add(HomeAddToWishListButtonClicked(
                        likedProduct: homeProductDataModel));
                  },
                  icon: const Icon(Icons.favorite_outline_outlined)),
              IconButton(
                  alignment: Alignment.center,
                  iconSize: 32,
                  color: Colors.black,
                  onPressed: () {
                    //navigate to the wish list page
                    homeBloc.add(HomeAddToCartButtonClicked(
                        cartProducts: homeProductDataModel));
                  },
                  icon: const Icon(Icons.shopping_cart_outlined))
            ],
          )
        ],
      ),
    );
  }
}
