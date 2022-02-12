import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigatorexample/screens/details_screen.dart';
import 'package:nuvigatorexample/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class Router extends NuRouter{
  @override
  String get initialRoute => 'home';

  @override
  List<NuRoute<NuRouter, Object, Object>> get registerRoutes => [
    HomeRouter(),
    DetailsRoute()
  ];

}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Nuvigator(router: Router()),
    );
  }

}
