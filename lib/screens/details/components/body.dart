import 'package:flutter/material.dart';
import 'package:modular_planter/models/Product.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        Stack(
          children: [
            TopRoundedContainer(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDescription(
                    product: product,
                    pressOnSeeMore: () {},
                  ),
                ],
              ),
            ),
            SlidingUpPanel(
              color: Colors.black87,
               panel: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),),),)
          ],
        ),
      ],
    );
  }
}
