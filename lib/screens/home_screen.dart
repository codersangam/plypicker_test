import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';

import '../models/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  fetchProducts() async {
    Future.delayed(const Duration(seconds: 2));
    final stringData = await rootBundle.loadString("assets/data.json");
    final decodedData = jsonDecode(stringData);
    var productsData = decodedData["products"];
    ProductModel.products = List.from(productsData)
        .map<Product>((item) => Product.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ProductModel.products == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            shrinkWrap: true,
            itemCount: ProductModel.products!.length,
            itemBuilder: (context, index) {
              var data = ProductModel.products![index];
              return ProductItem(
                product: data,
              );
            },
          );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Vx.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.productImage!,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ).box.make().p1().expand(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              product.productName!.text.make(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
                color: Vx.gray500,
              )
            ],
          ),
          product.brand!.text.gray400.make(),
          Row(
            children: [
              "Rs. ${product.originalPrice!}".text.bold.make(),
              10.widthBox,
              "Rs. ${product.discountedPrice!}"
                  .text
                  .sm
                  .gray400
                  .textStyle(
                      const TextStyle(decoration: TextDecoration.lineThrough))
                  .make(),
              10.widthBox,
              "-${product.discountPercentage!}%".text.green900.make(),
            ],
          ),
          VxRating(
            onRatingUpdate: (value) {},
            count: product.rating!.toInt(),
          )
        ],
      ),
    );
  }
}
