import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

class DetailsRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return DetailsScreen();
  }

  @override
  String get path => 'details';

  @override
  ScreenType get screenType => materialScreenType;
  
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: const Center(child: Text('Details screen')),
    );
  }
}
