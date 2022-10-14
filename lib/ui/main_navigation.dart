import 'package:flutter/material.dart';
import 'package:training/widgets/auth/auth_model.dart';
import 'package:training/widgets/auth/auth_widget.dart';
import 'package:training/widgets/main_screen/main_screen_widgets.dart';
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

  final routers = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.auth: (context) =>
        AuthProvider(model: AuthModel(), child: const AuthWidget()),
    MainNavigationRouteNames.mainScreen: (context) => const MainScreenWidgets(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.movieDetails:
        final arguments = settings.arguments;
        final moviedId = arguments is int ? arguments : 0;
        return MaterialPageRoute(
          builder: (context) => MovieDetailsWidget(movieId: moviedId),
        );
      default:
        const widget = Text("Navigation error!!!");
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
