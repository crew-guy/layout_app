import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const _hPad = 15.0;

  TextSection(this._title, this._body) {}

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 13.0, _hPad, 8.0),
            child: Text(this._title, style: Theme.of(context).textTheme.title),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 13.0, _hPad, 8.0),
            child: Text(this._body, style: Theme.of(context).textTheme.body1),
          )
        ]);
  }
}
