class HomeProductDataModel {
  final String name;
  final String id;
  final String category;
  final String quantity;
  final bool inStock;

  final double price;
  final String imageUrl;
  final String seller;

  HomeProductDataModel(
      {required this.name,
      required this.id,
      required this.category,
      required this.inStock,
      required this.quantity,
      required this.price,
      required this.imageUrl,
      required this.seller});
}
