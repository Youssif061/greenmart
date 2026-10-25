class ProductModel {
  final String id;
  final String name;
  final String image;
  final String price;
  final String quantityForPrice;
  final String categoryId;

  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantityForPrice,
    required this.categoryId,
  });
}

List<ProductModel> allProducts = [
  ProductModel(
    id: "1",
    name: "Apple",
    image: "assets/images/apple.png",
    price: "\$4.99",
    quantityForPrice: "1kg",
    categoryId: "1",
  ),
  ProductModel(
    id: "2",
    name: "Banana",
    image: "assets/images/banana.png",
    price: "\$3.20",
    quantityForPrice: "1kg",
    categoryId: "1",
  ),
  ProductModel(
    id: "3",
    name: "Olive Oil",
    image: "assets/images/oil.png",
    price: "\$8.50",
    quantityForPrice: "500ml",
    categoryId: "2",
  ),
  ProductModel(
    id: "4",
    name: "Salmon",
    image: "assets/images/fish.png",
    price: "\$12",
    quantityForPrice: "1kg",
    categoryId: "3",
  ),
];
