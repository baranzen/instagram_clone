// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:instagram_clone/idk/idk.dart';
import 'package:instagram_clone/pages/profile_page.dart';
import '../widgets/main_page/main_page_body.dart';
import '../widgets/main_page/app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),
      appBar: mainPageAppBar(),
      body: const MainPageBody(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        iconSize: 28,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: HexColor("#F2F2F2"),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            label: 'Premium',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage:
                  AssetImage('assets/images/instagram_profile.png'),
            ),
            label: 'Premium',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                NoAnimationMaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              );
              break;
            case 4:
              Navigator.push(
                context,
                NoAnimationMaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
          }
        },
      ),
    );
  }
}
