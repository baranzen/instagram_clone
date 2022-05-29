import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/main_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('profile page'),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
