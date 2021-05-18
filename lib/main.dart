import 'package:flutter/material.dart';
import 'package:layout_app/screens/location_detail/location_detail.dart';
import 'package:layout_app/screens/locations/locations.dart';
import 'package:layout_app/style.dart';

void main() {
  runApp(MyApp());
}

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: LocationDetail(),
        home: Locations(),
        onGenerateRoute: _routes(),
        theme: _theme());
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(title: TitleTextStyle, body1: Body1TextStyle));
  }
}
