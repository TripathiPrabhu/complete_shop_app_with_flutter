import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
   int count =0;

  Increase(int CartCount){
    CartCount= count;
    count++;
    notifyListeners();

  }



}