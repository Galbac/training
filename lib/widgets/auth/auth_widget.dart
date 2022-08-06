import 'package:flutter/material.dart';
import 'package:training/theme/button_style.dart';
import 'package:training/widgets/main_screen/main_screen_widgets.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Войти в свою учётную запись"),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const _FormWidget(),
          const SizedBox(
            height: 25,
          ),
          Text(
            '''Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой.''',
            style: textStyle,
          ),
          TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: const Text("Регистрация")),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Если Вы зарегистрировались, но не получили письмо для "
                "подтверждения.",
            style: textStyle,
          ),
          TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: const Text("Отправить заново")),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordController.text;
    if (login == "admin" && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('main_screen');
      print("Открыть страницу");
    } else {
      errorText = 'Не правильный логин или пароль';
      print("Ошибка");
    }
    setState(() {

    });
  }

  void _resetPassword() {
    print("Cброс");
  }

  @override
  Widget build(BuildContext context) {
    final color = const Color(0xFF01B4E4);
    final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    final textFielDecorator = const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10));
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(errorText != null) ...[
          Text(errorText, style: TextStyle(color: Colors.red, fontSize: 17),),
          SizedBox(height: 20,)
        ],
        Text(
          'Имя пользователя',
          style: textStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: textFielDecorator,
          controller: _loginTextController,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Пароль',
          style: textStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: textFielDecorator,
          obscureText: true,
          controller: _passwordController,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
              ),
              child: const Text("Войти"),
            ),
            const SizedBox(
              width: 25,
            ),
            TextButton(
                onPressed: _resetPassword,
                style: AppButtonStyle.linkButton,
                child: const Text("Сбросить пароль")),
          ],
        ),
      ],
    );
  }
}
