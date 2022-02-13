import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

class DetailsRoute extends NuRoute {

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    final String message = settings.rawParameters['message'];

    return DetailsScreen(message: message,);
  }

  @override
  String get path => 'details';

  @override
  ScreenType get screenType => materialScreenType;
  
}

class DetailsScreen extends StatelessWidget {
  final String message; // text from route
  const DetailsScreen({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(child: Text(message)),
    );
  }
}
