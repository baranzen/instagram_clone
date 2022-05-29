// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/pages/main_page.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 343,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 168,
            ),
            Image.asset('assets/images/instagram2.png'),
            const SizedBox(height: 39),
            const Input(),
            const SizedBox(
              height: 12,
            ),
            const Input(),
            const SizedBox(height: 19),
            const ForgotPassword(),
            const SizedBox(height: 30),
            const LogIn(),
            const SizedBox(height: 37),
            const LogInWithFacebook(),
            const SizedBox(height: 41.5),
            const Or(),
            const SizedBox(height: 41.5),
            const DontHaveAnAccount(),
          ],
        ),
      ),
    );
  }
}

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Don't have an account?"),
        SizedBox(
          width: 7,
        ),
        Text(
          'Sign Up',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

class Or extends StatelessWidget {
  const Or({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(child: Divider()),
        SizedBox(
          width: 20,
        ),
        Text("OR"),
        SizedBox(
          width: 20,
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}

class LogInWithFacebook extends StatelessWidget {
  const LogInWithFacebook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(
          FontAwesomeIcons.facebook,
          color: Colors.blue,
        ),
        const SizedBox(width: 10),
        Text(
          'Log in with Facebook',
          style: TextStyle(
            color: HexColor('3797EF'),
          ),
        ),
      ],
    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: HexColor('3797EF'),
          minimumSize: const Size(307, 44),
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const MainPage(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
        },
        child: const Text(
          'Log in',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

//! Widgets

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Forgot password?',
        style: TextStyle(
          color: HexColor('3797EF'),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 44,
      child: TextField(
        decoration: InputDecoration(
          fillColor: HexColor("#FAFAFA"),
          border: const OutlineInputBorder(),
          filled: true,
        ),
      ),
    );
  }
}
