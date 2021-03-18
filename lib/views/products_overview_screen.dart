import 'package:flutter/material.dart';
import 'package:flutter_shop/data/dummy_data.dart';
import 'package:flutter_shop/models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, index) => Text(loadedProducts[index].title),
      ),
    );
  }
}
