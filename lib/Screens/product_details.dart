import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/card_provider.dart';
import '../widgets/product_detail_bottom_bar.dart';
import '../widgets/shopping_cart_icon.dart';

class ProductDetails extends StatelessWidget {
  final String? title;
  final String? description;
  final String? imgUrl;
  final double? price;
  bool isFavorite = false;

  ProductDetails(
      {@required this.title,
      @required this.description,
      @required this.imgUrl,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '${title}',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          CartIconButton(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height / 3,
                  color: Colors.red,
                  child: Image.network(
                    '${imgUrl}',
                    fit: BoxFit.fill,
                  ),
                ),
              ), //image end here
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ ${price}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo,
                        letterSpacing: 2),
                  ),
                  CartIconButton()
                ],
              ),
              //price end here

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '${title}',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 2),
                    ),
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(15),
                    // child:
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.1),
                      ),

                      child: Center(
                      child:
                      Consumer<CartProvider>(
                        builder: (context, CartProvider, child) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize:40,
                                onPressed: () {
                                  CartProvider.Decrese(0);
                                },
                                icon: Icon(
                                  Icons.remove_circle,
                                  color: CartProvider.count<=0?Colors.black54:Colors.deepOrange,
                                ),
                              ),

                              IconButton(
                                iconSize:40,
                                onPressed: () {
                                  CartProvider.Increase(0);
                                },
                                icon: Icon(
                                  Icons.add_circle_rounded,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  // ),
                  ),
                  //cart Icon end here____________
                ],
              ),
              Text(
                '$description',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.indigo,
                    letterSpacing: 2),
              ), //title and price end here
            ],
          ),
        ),
      ),
      bottomSheet: ProductDetailBottomBar(),
    );
  }
}
