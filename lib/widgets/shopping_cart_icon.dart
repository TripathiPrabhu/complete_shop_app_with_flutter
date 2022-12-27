import 'package:complete_shop_app_with_flutter/providers/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartIconButton extends StatelessWidget {
  int providerCount = CartProvider().count;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, provider, child) {
        return Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 40,
              ),
            ),
            Consumer<CartProvider>(
              builder: (context, CartProvider, child) {
                return Positioned(
                    top: 3,
                    right: 3,
                    child: CartProvider.count>=1?
                    Container(
                      height: 22,
                      width: 22,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                          child: Text(
                        "${CartProvider.count}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                  ):SizedBox());
              },
            ),
          ],
        );
      },
    );
  }
}
