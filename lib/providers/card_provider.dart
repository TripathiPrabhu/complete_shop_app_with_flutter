import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  int count = 0;
  bool isfavorite = false;

  Increase(int CartCount) {
    CartCount = count;
    count++;
    notifyListeners();
  }

  Decrese(int CartCount) {
    CartCount = count;
    if (count <= 0) {
      count = 0;
    } else {
      count--;
    }
    notifyListeners();
  }

  makeFavorite(){
    isfavorite = !isfavorite;
    notifyListeners();
  }

}
