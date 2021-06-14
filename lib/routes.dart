import 'package:flutter/widgets.dart';
import 'package:modular_planter/screens/details/details_screen.dart';
import 'package:modular_planter/screens/home/home_screen.dart';
import 'package:modular_planter/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
