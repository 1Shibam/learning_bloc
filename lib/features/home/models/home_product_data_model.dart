import 'dart:ffi';

class HomeProductDataModel {
  final String name;
  final String id;
  final String description;
  final double price;
  final String imageUrl;

  HomeProductDataModel(
      {required this.name,
      required this.id,
      required this.description,
      required this.price,
      required this.imageUrl});
}
