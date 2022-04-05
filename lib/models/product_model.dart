// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

// ProductModel productModelFromJson(String str) =>
//     ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  // ProductModel({
  //   this.products,
  // });

  static List<Product>? products;

  // factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
  //       products: List<Product>.from(
  //           json["products"].map((x) => Product.fromJson(x))),
  //     );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    this.productId,
    this.productImage,
    this.productName,
    this.brand,
    this.originalPrice,
    this.discountedPrice,
    this.discountPercentage,
    this.rating,
  });

  int? productId;
  String? productImage;
  String? productName;
  String? brand;
  int? originalPrice;
  int? discountedPrice;
  int? discountPercentage;
  double? rating;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["product_id"],
        productImage: json["product_image"],
        productName: json["product_name"],
        brand: json["brand"],
        originalPrice: json["original_price"],
        discountedPrice: json["discounted_price"],
        discountPercentage: json["discount_percentage"],
        rating: json["rating"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_image": productImage,
        "product_name": productName,
        "brand": brand,
        "original_price": originalPrice,
        "discounted_price": discountedPrice,
        "discount_percentage": discountPercentage,
        "rating": rating,
      };
}
