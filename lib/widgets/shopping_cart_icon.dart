import 'package:flutter/material.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        IconButton(onPressed: () {  },
          icon: Icon(Icons.shopping_cart,
            size: 35,
          ),
        ),
        Positioned(
          top: 4,
          right: 6,
          child: Container(
            height: 22,
            width: 22,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
            ),
            child: const Center(
                child: Text(
                  
                  "12",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
