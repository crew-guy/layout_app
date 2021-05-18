import 'package:flutter/material.dart';
import 'package:layout_app/models/location.dart';
import 'package:layout_app/screens/location_detail/image_banner.dart';
import 'package:layout_app/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  int _locationID;

  LocationDetail(this._locationID) {}

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = Location.fetchById(this._locationID);
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.imgPath),
              ...textSections(location)
            ]));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.body))
        .toList();
  }
}
