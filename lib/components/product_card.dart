import 'package:flutter/material.dart';
import 'package:modular_planter/models/Product.dart';
import 'package:modular_planter/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  // borderRadius: BorderRadius.circular(15),
                ),
                child: Hero(
                  tag: product.id.toString(),
                  child: Image.asset(product.images[0],height: 120,width: 70,),
                ),
              ),
              SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 3,
              ),
              Text(
                "\$${product.price}",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
