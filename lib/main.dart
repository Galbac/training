import 'package:flutter/material.dart';
import 'package:training/widgets/auth/auth_widget.dart';
import 'package:training/widgets/main_screen/main_screen_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(3, 37, 65, 1),
        ),
      ),
      routes: {
        '/auth': (context) => const AuthWidget(),
        'main_screen': (context) => const MainScreenWidgets(),
      },
      initialRoute: '/auth',

    );
  }
}
