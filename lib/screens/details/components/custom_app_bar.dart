import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modular_planter/models/Product.dart';
import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  final Product product;

  CustomAppBar({@required this.product,});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/icons/Back ICon.svg",
                  height: 15,
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                color:
                product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color:
                product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
                height: getProportionateScreenWidth(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
