import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_flutter_task/utils/MyTheme.dart';

import '../../widgets/ProductListItem.dart';
import '../../widgets/custom_search_with_shopping_cart.dart';

class ProductList extends StatelessWidget {
  List<ProductItemWidget> products = [
    ProductItemWidget(
      imageUrl: 'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png',
      name: 'Nike Air Jordon',
      description: 'Nike shoes flexible for wo..',
      price: 'EGP 1,200 ',
      oldPrice: '2000 EGP',
      rating: '4.8',
    ),
    ProductItemWidget(
      imageUrl: 'https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png',
      name: 'Nike Air Jordon',
      description: 'Nike shoes flexible for wo..',
      price: 'EGP 1,200 ',
      oldPrice: '2000 EGP',
      rating: '4.8',
    ),
    ProductItemWidget(
      imageUrl: 'https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/1.png',
      name: 'Nike Air Jordon',
      description: 'Nike shoes flexible for wo..',
      price: 'EGP 1,200 ',
      oldPrice: '2000 EGP',
      rating: '4.8',
    ),
    ProductItemWidget(
      imageUrl: 'https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/1.png',
      name: 'Nike Air Jordon',
      description: 'Nike shoes flexible for wo..',
      price: 'EGP 1,200 ',
      oldPrice: '2000 EGP',
      rating: '4.8',
    ),
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.whiteColor,
      appBar: AppBar(
        backgroundColor: MyTheme.whiteColor,
        title: Image.asset('assets/icons/route_logo.png'),
      ),
      body: Column(
        children: [
          CustomSearchWithShoppingCart(),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 items per row
                crossAxisSpacing: 8,
                mainAxisSpacing:8,
                childAspectRatio: 0.7, // Adjust the aspect ratio as needed
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return products[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
