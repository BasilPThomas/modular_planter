import 'package:flutter/material.dart';
import 'package:modular_planter/constants.dart';
import 'package:modular_planter/screens/home/home_screen.dart';
import 'package:modular_planter/size_config.dart';
import 'package:dotted_border/dotted_border.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Designed to form the artificial \nenvironment of any plant",
      "image": "assets/images/plantes.png"
    },
    {
      "text":
          "We help people conect with store \naround World",
      "image": "assets/images/plantes.png"

    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/plantes.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/plantes.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/plantes.jpg"),
                  fit: BoxFit.fitHeight)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35.0,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    splashData.length,
                        (index) => buildDot(index: index),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(flex: 3),
                      DottedBorder(
                        color: Colors.black26,
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        dashPattern: [45,10],
                        strokeWidth: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.black,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                            onPressed: () {
                              Navigator.pushNamed(context,HomeScreen.routeName);
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 3,
      width: currentPage == index ? 32 : 25,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFF000000) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
