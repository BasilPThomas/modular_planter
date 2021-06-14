import 'package:flutter/material.dart';
import 'package:modular_planter/models/Product.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child: Text(
                    product.title,
                    style:TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                  child: Text(
                    "\$${product.price}",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black,
                ),
                height: 40,
                width: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Cart",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),
                    DottedBorder(
                      color: Colors.white54,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      padding: EdgeInsets.all(8),
                      dashPattern: [8,4],
                      strokeWidth: 2,
                      child: Text("+",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 7,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
