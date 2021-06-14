import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black26,
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(5),
      dashPattern: [45,5],
      strokeWidth: 2,
      child: Container(
        width: SizeConfig.screenWidth * 0.11,
        child: TextField(
          onChanged: (value) => print(value),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(9)),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
