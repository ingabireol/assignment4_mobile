import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  final title;
  final route;
  const MyTabs({super.key, @required this.title, @required this.route});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      elevation: 3.0,
      color: Colors.indigo,
      child: Text(widget.title),
    );
  }
}
