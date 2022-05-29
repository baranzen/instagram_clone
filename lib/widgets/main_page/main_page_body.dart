// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Story(),
        const Divider(),
        const Post(),
        SizedBox(height: 10.h),
        const Post(),
        SizedBox(height: 10.h),
        const Post(),
        SizedBox(height: 10.h),
        const Post(),
        SizedBox(height: 10.h),
        const Post(),
        SizedBox(height: 10.h),
        const Post(),
      ],
    );
  }
}
//! Widgets

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: PostTop(),
        ),
        const PostImage(),
        const PostIcons(),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, bottom: 5),
          child: Row(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage('assets/images/instagram_profile.png'),
              ),
              SizedBox(width: 6.5),
              Text('Liked by'),
              SizedBox(width: 3),
              Text('baranzen2', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 3),
              Text('and'),
              SizedBox(width: 3),
              Text('99,999 others')
            ],
          ),
        ),
      ],
    );
  }
}

class PostIcons extends StatelessWidget {
  const PostIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
        bottom: 14,
        left: 14,
        right: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.favorite_border,
                size: 28,
              ),
              SizedBox(width: 17),
              Icon(
                Icons.mode_comment_outlined,
                size: 28,
              ),
              SizedBox(width: 17),
              Icon(
                Icons.near_me_outlined,
                size: 28,
              ),
            ],
          ),
          const Icon(
            Icons.save_alt_rounded,
            size: 28,
          ),
        ],
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  const PostImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375,
      width: MediaQuery.of(context).size.width,
      child: CachedNetworkImage(
        imageUrl: 'https://picsum.photos/200/300',
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}

class PostTop extends StatelessWidget {
  const PostTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/instagram_profile.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'baranzen',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Istanbul, Turkey',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        const Icon(Icons.more_horiz),
      ],
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 9,
        top: 10,
      ),
      child: SizedBox(
        height: 102,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            storyList(context),
            const SizedBox(width: 20),
            storyList(context),
            const SizedBox(width: 20),
            storyList(context),
            const SizedBox(width: 20),
            storyList(context),
            const SizedBox(width: 20),
            storyList(context),
            const SizedBox(width: 20),
            storyList(context),
            const SizedBox(width: 20),
            storyList(context),
            const SizedBox(width: 20),
            storyList(context),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

Widget storyList(BuildContext context) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              HexColor('#FBAA47'),
              HexColor('#D91A46'),
              HexColor('#A60F93'),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const Padding(
              padding: EdgeInsets.all(2.5),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 32,
                child: CircleAvatar(
                  radius: 29,
                  backgroundImage:
                      AssetImage('assets/images/instagram_profile.png'),
                ),
              ),
            ),
            Positioned(
              top: 53,
              child: Image.asset('assets/images/Live.png'),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      const Text('baranzen')
    ],
  );
}
