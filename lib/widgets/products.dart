import 'package:complete_shop_app_with_flutter/Screens/product_details.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class Product extends StatelessWidget {
  Product({Key? key}) : super(key: key);
  List<ProductModel> ProductList = [
    ProductModel(
        imgUrl:
            'https://lmsin.net/cdn-cgi/image/h=831,w=615,q=60,fit=cover/https://aaeff43fe32172cbcecc-ae2a4e9a8cbc330ede5588dedf56886e.lmsin.net/max/1000011630878-Red-RED-1000011630878_05-2100.jpg',
        title: 'Red top-Back',
        description:
            'An ideal pick for your casual look, this t-shirt is designed with a round neckline, half sleeves, and graphic prints',
        price: 399,
        isFavorite: false),
    ProductModel(
        imgUrl:
            'https://lmsin.net/cdn-cgi/image/h=831,w=615,q=60,fit=cover/https://aaeff43fe32172cbcecc-ae2a4e9a8cbc330ede5588dedf56886e.lmsin.net/max/1000011872177-Yellow-YELLOW-1000011872177_03-2100.jpg',
        title: 'Yellow top T-Shirt',
        description:
            'An ideal pick for your casual look, this t-shirt is designed with a round neckline, half sleeves, and graphic prints',
        price: 299,
        isFavorite: false),
    ProductModel(
        imgUrl:
            'https://lmsin.net/cdn-cgi/image/h=831,w=615,q=60,fit=cover/https://aaeff43fe32172cbcecc-ae2a4e9a8cbc330ede5588dedf56886e.lmsin.net/max/1000011745219-Brown-BROWN-1000011745219_01-2100.jpg',
        title: 'Grey Sleeves T-shirt',
        description:
            'An ideal pick for your casual look, this t-shirt is designed with a round neckline, half sleeves, and graphic prints',
        price: 159,
        isFavorite: false),
    ProductModel(
        imgUrl:
            'https://lmsin.net/cdn-cgi/image/h=831,w=615,q=60,fit=cover/https://aaeff43fe32172cbcecc-ae2a4e9a8cbc330ede5588dedf56886e.lmsin.net/max/1000011816415-Purple-LILAC-1000011816415_03-2100.jpg',
        title: 'blue Sleeves T-shirt',
        description:
            'An ideal pick for your casual look, this t-shirt is designed with a round neckline, half sleeves, and graphic prints',
        price: 149,
        isFavorite: false),
    ProductModel(
        imgUrl:
            'https://lmsin.net/cdn-cgi/image/h=831,w=615,q=60,fit=cover/https://aaeff43fe32172cbcecc-ae2a4e9a8cbc330ede5588dedf56886e.lmsin.net/max/1000011939495-Beige-OATMARL-1000011939495_03-2100.jpg',
        title: 'Round Neck T-shirt',
        description:
            'An ideal pick for your casual look, this t-shirt is designed with a round neckline, half sleeves, and graphic prints',
        price: 399,
        isFavorite: false),
    ProductModel(
        imgUrl:
            'https://lmsin.net/cdn-cgi/image/h=831,w=615,q=60,fit=cover/https://aaeff43fe32172cbcecc-ae2a4e9a8cbc330ede5588dedf56886e.lmsin.net/max/1000011630878-Red-RED-1000011630878_04-2100.jpg',
        title: 'Printed T-shirt',
        description:
            'An ideal pick for your casual look, this t-shirt is designed with a round neckline, half sleeves, and graphic prints',
        price: 399,
        isFavorite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        itemCount: ProductList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 12),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  '${ProductList[index].title}',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 15),
                ),
                subtitle: Text(
                  '${ProductList[index].price}',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 15),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetails(
                        imgUrl: ProductList[index].imgUrl,
                        title: ProductList[index].title,
                        description: ProductList[index].description,
                        price: ProductList[index].price,

                      ),
                    ),
                  );
                },
                child: Image.network(
                  '${ProductList[index].imgUrl}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}
