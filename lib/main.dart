import 'package:flutter/material.dart';
import 'package:flutter_shop/providers/products.dart';
import 'package:provider/provider.dart';
import 'package:flutter_shop/utils/app_routes.dart';
import 'package:flutter_shop/views/product_details_screen.dart';
import 'package:flutter_shop/views/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Products(),
      child: MaterialApp(
          title: 'Minha Loja',
          theme: ThemeData(
            primarySwatch: Colors.red,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          routes: {
            AppRoutes.HOME: (ctx) => ProductsOverviewScreen(),
            AppRoutes.PRODUCT_DETAILS: (ctx) => ProductDetailsScreen(),
          }),
    );
  }
}
