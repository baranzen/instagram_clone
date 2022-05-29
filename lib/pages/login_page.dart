// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/login_page/login_page_body.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F2F2"),
      body: const LoginScreenBody(),
    );
  }
}
