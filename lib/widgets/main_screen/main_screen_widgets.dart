import 'package:flutter/material.dart';
import 'package:training/domain/data_providers/session_data_providers.dart';
import 'package:training/library/widgets/inherited/inherited_provider.dart';
import 'package:training/widgets/movie_list/movie_list_model.dart';
import 'package:training/widgets/movie_list/movie_list_widget.dart';

class MainScreenWidgets extends StatefulWidget {
  const MainScreenWidgets({Key? key}) : super(key: key);

  @override
  State<MainScreenWidgets> createState() => _MainScreenWidgetsState();
}

class _MainScreenWidgetsState extends State<MainScreenWidgets> {
  int _selectedTab = 0;
  final movieListModel = MovieListModel();

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    movieListModel.setupLocale(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TMDB',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => SessionDataProvider().setSessionId(null),
            icon: const Icon(Icons.search),
          ),
        ],
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
      body: IndexedStack(
        index: _selectedTab,
        children: [
          const Text("Новости"),
          NotifierProvider(
              model: movieListModel, child: const MovieListWidget()),
          const Text("Сериалы"),
        ],
      ),
    );
  }
}
