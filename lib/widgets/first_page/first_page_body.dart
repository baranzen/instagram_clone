// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:instagram_clone/pages/login_page.dart';
import 'package:instagram_clone/pages/main_page.dart';

class FirstPageBody extends StatelessWidget {
  const FirstPageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          instagramLogo(),
          instagramProfile(),
          SizedBox(height: 10.h),
          const Text('baranzen'),
          SizedBox(height: 12.h),
          button(context),
          SizedBox(height: 30.h),
          switchAccounts(context),
          SizedBox(height: 140.h),
          const Divider(),
          SizedBox(height: 10.h),
          const Text('Dont have an account? Sign up.'),
        ],
      ),
    );
  }

  Widget switchAccounts(context) {
    return TextButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const LoginPage()),
        ),
      ),
      child: Text(
        'Switch accounts',
        style: TextStyle(
          color: HexColor('3797EF'),
        ),
      ),
    );
  }

  TextButton button(context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: HexColor('3797EF'),
        minimumSize: Size(307.w, 44.h),
      ),
      child: const Text(
        'Log in',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => const MainPage(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        );
      },
    );
  }

  Padding instagramProfile() {
    return Padding(
      padding: EdgeInsets.only(top: 52.h),
      child: CircleAvatar(
        radius: 45.w,
        backgroundImage:
            const AssetImage('assets/images/instagram_profile.png'),
      ),
    );
  }

  Padding instagramLogo() {
    return Padding(
      padding: EdgeInsets.only(top: 240.h),
      child: Image.asset('assets/images/instagram2.png'),
    );
  }
}
