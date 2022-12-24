import 'package:flutter/material.dart';

class ProductModel {
  final String? title;
  final String? description;
  final String? imgUrl;
  final double? price;
  bool isFavorite = false;

  ProductModel(

      {
        @required this.imgUrl,
        @required this.title,
        @required this.description,
        @required this.price,
         required this.isFavorite,
     });
}
