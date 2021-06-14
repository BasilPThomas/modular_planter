import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'search_field.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          DottedBorder(
            color: Colors.black26,
            borderType: BorderType.RRect,
            radius: Radius.circular(12),
            padding: EdgeInsets.all(5),
            dashPattern: [45,8],
            strokeWidth: 2,
            child: IconButton(
              icon: Icon(Icons.filter_list),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black,
              ),
              height: 55,
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Cart",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),
                  DottedBorder(
                    color: Colors.white38,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(9),
                    dashPattern: [16,12],
                    strokeWidth: 2,
                    child: Text("2",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
