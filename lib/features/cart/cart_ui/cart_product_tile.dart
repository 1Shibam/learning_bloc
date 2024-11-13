import 'package:flutter/material.dart';
import 'package:learning_bloc/features/cart/bloc/cart_bloc.dart';
import 'package:learning_bloc/features/home/models/home_product_data_model.dart';

class CartProductTile extends StatelessWidget {
  final HomeProductDataModel cartProducts;
  final CartBloc cartBloc;
  const CartProductTile(
      {super.key, required this.cartProducts, required this.cartBloc});

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
                    image: NetworkImage(cartProducts.imageUrl),
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
                    cartProducts.name,
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    cartProducts.category,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    cartProducts.quantity,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Text(
                cartProducts.inStock ? 'in Stock' : 'out of stock',
                style: TextStyle(
                    fontSize: 24,
                    color: cartProducts.inStock ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${cartProducts.price} \$',
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
                cartProducts.seller,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.yellow),
                child: const Row(
                  children: [
                    Text(
                      'Place Order',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.forward,
                      size: 32,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
