import 'package:flutter/material.dart';

import 'components.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 20.0,
        centerTitle: true,
        title: Text('Home', style: TextStyle(color: Colors.white)),
      ),
      drawer: const Drawer(
        elevation: 20.0,
        child: Column(
          children: [
            MyTabs(title: 'Home', route: '/'),
            SizedBox(height: 20.0),
            MyTabs(title: 'Sign in', route: '/'),
            SizedBox(height: 20.0),
            MyTabs(title: '', route: '/'),
            SizedBox(height: 20.0),
            MyTabs(title: 'Home', route: '/'),
          ],
        ),
      ),
    );
  }
}
