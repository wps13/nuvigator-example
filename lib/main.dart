import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigatorexample/screens/details_screen.dart';
import 'package:nuvigatorexample/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
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
      home: Nuvigator.routes(initialRoute: 'home', routes: [
        NuRouteBuilder(path: 'home', builder: (BuildContext contextNuvigator, __, ___) => HomeScreen(onPressed: (){
          Nuvigator.of(contextNuvigator).open('details');
        },), screenType: materialScreenType),
        NuRouteBuilder(
            path: 'details', builder: (_, __, ___) => const DetailsScreen(), screenType: materialScreenType)
      ]),
    );
  }

}
