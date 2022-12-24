import 'package:flutter/material.dart';
import '../widgets/products.dart';
import '../widgets/shopping_cart_icon.dart';

class ProductOverViewScreen extends StatelessWidget {
  ProductOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:
            Text(
              'My-Shop',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          actions:[
            CartIconButton()
        ],),
      body: Product(),
    );
  }
}
