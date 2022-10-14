import 'package:flutter/material.dart';
import 'package:training/theme/app_colors.dart';
import 'package:training/ui/main_navigation.dart';
import 'package:training/widgets/app/my_app_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final model = MyAppModel();
  await model.checkAuth();
  runApp(
    MyApp(
      model: model,
    ),
  );
}

class MyApp extends StatelessWidget {
  final MyAppModel model;
  static final mainNavigation = MainNavigation();

  const MyApp({Key? key, required this.model}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.mainDarkBlue),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.mainDarkBlue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.green,
            enableFeedback: false),
      ),
      routes: mainNavigation.routers,
      initialRoute: mainNavigation.initialRoute(model.isAuth),
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
