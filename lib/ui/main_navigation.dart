import 'package:flutter/material.dart';
import 'package:training/library/widgets/inherited/inherited_provider.dart';
import 'package:training/widgets/auth/auth_model.dart';
import 'package:training/widgets/auth/auth_widget.dart';
import 'package:training/widgets/main_screen/main_screen_model.dart';
import 'package:training/widgets/main_screen/main_screen_widgets.dart';
import 'package:training/widgets/movie_details/movie_details_model.dart';
import 'package:training/widgets/movie_details/movie_details_widget.dart';

abstract class MainNavigationRouteNames {
  static const auth = 'auth';
  static const mainScreen = '/';
  static const movieDetails = '/movie_details';
}

class MainNavigation {
  String initialRoute(bool isAuth) => isAuth
      ? MainNavigationRouteNames.mainScreen
      : MainNavigationRouteNames.auth;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.auth: (context) => NotifierProvider(
      create: () => AuthModel(),
      child: const AuthWidget(),
    ),
    MainNavigationRouteNames.mainScreen: (context) => NotifierProvider(
      create: () => MainScreenModel(),
      child: const MainScreenWidget(),
    ),
  };
  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.movieDetails:
        final arguments = settings.arguments;
        final movieId = arguments is int ? arguments : 0;
        return MaterialPageRoute(
          builder: (context) => NotifierProvider(
            create: () => MovieDetailsModel(movieId),
            child: const MovieDetailsWidget(),
          ),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}