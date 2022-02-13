import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

class HomeRouter extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return HomeScreen(onPressed: (){
      nuvigator.pushNamed('details', arguments: {'message': 'Hello world'});
    },);
  }

  @override
  String get path => 'home';

  @override
  ScreenType get screenType => materialScreenType;
  
}

class HomeScreen extends StatelessWidget {
  final Function onPressed;

  const HomeScreen({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
          child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Navigate to details'),
      )),
    );
  }
}
