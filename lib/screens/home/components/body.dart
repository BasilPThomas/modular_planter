import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              alignment: Alignment.topLeft,
              child: Text("Choose Device",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  fontWeight: FontWeight.w300,),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
