import 'package:flutter/material.dart';

import '../widgets/product_detail_bottom_bar.dart';
import '../widgets/products.dart';
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
              Text('\$ ${price}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo,
                      letterSpacing: 2)), //price end here
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${title}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 2),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: 35,
                      color: Colors.pink,
                    ),
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
