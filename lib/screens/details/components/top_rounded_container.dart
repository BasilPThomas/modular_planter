import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
