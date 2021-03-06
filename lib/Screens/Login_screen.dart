import 'package:app_notas/Widgets/constants.dart';
import 'package:app_notas/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Notas - Login',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Entre seu email'),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Entre sua senha'),
              textAlign: TextAlign.center,
              obscureText: true,
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Login',
              onPressed: () {
                print('Login efetuado!');
              },
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
