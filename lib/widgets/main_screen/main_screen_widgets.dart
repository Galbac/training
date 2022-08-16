import 'package:flutter/material.dart';
import 'package:training/widgets/movie_list/movie_list_widget.dart';

class MainScreenWidgets extends StatefulWidget {
  const MainScreenWidgets({Key? key}) : super(key: key);

  @override
  State<MainScreenWidgets> createState() => _MainScreenWidgetsState();
}

class _MainScreenWidgetsState extends State<MainScreenWidgets> {
  int _selectedTab = 0;

 static const List _widgetOptions = [
   Text("Новости"),
   MovieListWidget(),
   Text("Сериалы"),
 ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TMDB',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: onSelectedTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Новости"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Фильмы"),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: "Сериалы"),
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
    );
  }
}
