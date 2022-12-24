import 'package:complete_shop_app_with_flutter/providers/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/card_provider.dart';

import '../providers/card_provider.dart';
import '../providers/card_provider.dart';
import '../providers/card_provider.dart';


class ProductDetailBottomBar extends StatelessWidget {
  const ProductDetailBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
    width: double.maxFinite,
    height: 80,
  //  color: Colors.indigoAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [ 
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: MaterialButton(onPressed: (){},
              height: 50,
              minWidth: 160,
              color: Color(0XFFFF9F00),
              child: Text('Buy Now',
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 2
                ),
              ),

            ),
          ),//BUY NOW
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Consumer<CartProvider>(
              builder: (context, CartProvider, child) {
                return MaterialButton(
                  onPressed: () {
                    CartProvider.Increase(0);
                    print(CartProvider.count);
                  },
                  height: 50,
                  minWidth: 160,
                  color: Color(0XFFFF9F00),
                  child: Text('ADD TO CART',
                    style: TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 2
                    ),
                  ),
                );
              }
            )
          ), //ADD TO CART
        ],
      ),
    );
  }
}
