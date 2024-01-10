class ProductCardModel {
  final String imagePath;
  final String productName;
  final double price;
  final double? prePrice;

  ProductCardModel({
    this.prePrice,
    required this.imagePath,
    required this.productName,
    required this.price,
  });
}
