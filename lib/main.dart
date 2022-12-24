import 'package:complete_shop_app_with_flutter/providers/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/product_overview_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commerse Shopping App',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: ProductOverViewScreen(),
      ),
    );
  }
}



