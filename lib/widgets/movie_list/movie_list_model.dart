import 'package:flutter/material.dart';
import 'package:training/domain/api_client/api_client.dart';
import 'package:training/domain/entity/movie.dart';
import 'package:training/ui/main_navigation.dart';
import 'package:intl/intl.dart';

class MovieListModel extends ChangeNotifier {
  final _apiClient = ApiClient();
  final _movies = <Movies>[];

  List<Movies> get movies => List.unmodifiable(_movies);
  late DateFormat _dateFormat;
   String _locale = "";

  String stringFromDate(DateTime? date) =>
      date != null ? _dateFormat.format(date) : "";

  void setupLocale(BuildContext context){
    final locale = Localizations.localeOf(context).toLanguageTag();
    if(_locale == locale) return;
    _locale = _locale;
    _dateFormat = DateFormat.yMMMMd(locale);
    _loadMovies();
  }

  Future<void> _loadMovies() async {
    final moviesResponse = await _apiClient.popularMovie(1, _locale );
    _movies.addAll(moviesResponse.movies);
    notifyListeners();
  }

  void onMovieTap(BuildContext context, int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      MainNavigationRouteNames.movieDetails,
      arguments: id,
    );
  }


}
