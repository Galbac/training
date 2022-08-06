import 'package:flutter/material.dart';

class MainScreenWidgets extends StatefulWidget {
  const MainScreenWidgets({Key? key}) : super(key: key);

  @override
  State<MainScreenWidgets> createState() => _MainScreenWidgetsState();
}

class _MainScreenWidgetsState extends State<MainScreenWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('TMDB'),
        centerTitle: true,
      ),
    );
  }
}
