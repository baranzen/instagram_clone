// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

AppBar mainPageAppBar() {
  return AppBar(
    shadowColor: Colors.white,
    backgroundColor: HexColor('#FFFFFF'),
    automaticallyImplyLeading: false,
    actions: const [
      SizedBox(width: 12),
      Flexible(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Camera(),
        ),
      ),
      Flexible(
        child: Logo(),
      ),
      Flexible(
        child: Right(),
      ),
      SizedBox(width: 12),
    ],
  );
}

class Right extends StatelessWidget {
  const Right({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          child: Image.asset('assets/icons/IGTV.png'),
        ),
        const SizedBox(width: 18.31),
        Image.asset('assets/icons/Messanger.png'),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/icons/Instagram Logo.png');
  }
}

class Camera extends StatelessWidget {
  const Camera({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/icons/Camera Icon.png');
  }
}
