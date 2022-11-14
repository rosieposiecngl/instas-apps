import 'package:flutter/material.dart';
import 'package:insta_apps/tema.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar(),
      bottomNavigationBar: bottomNavBar(),
      body: body(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: kWhiteColor,
      centerTitle: false,
      title: Row(
        children: [
          Container(
            width: 103,
            height: 29,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/add.png',
                ),
              ),
            ),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/love.png',
                ),
              ),
            ),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/send.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget body(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              StoryItem(
                imageUrl: 'assets/cindy.png',
                title: 'Your Story',
                unread: false,
              ),
              StoryItem(
                imageUrl: 'assets/storyread4.png',
                title: 'yama',
                unread: true,
              ),
              StoryItem(
                imageUrl: 'assets/story2.png',
                title: 'lalalism_',
                unread: false,
              ),
              StoryItem(
                imageUrl: 'assets/story3.png',
                title: 'chongah',
                unread: false,
              ),
              StoryItem(
                imageUrl: 'assets/storyread5.png',
                title: 'gakari',
                unread: true,
              ),
              StoryItem(
                imageUrl: 'assets/story4.png',
                title: 'nikongl',
                unread: false,
              ),
              StoryItem(
                imageUrl: 'assets/storyread6.png',
                title: 'anya',
                unread: true,
              ),
              StoryItem(
                imageUrl: 'assets/story5.png',
                title: 'jennie',
                unread: false,
              ),
              StoryItem(
                imageUrl: 'assets/story6.png',
                title: 'jichu',
                unread: false,
              ),
              StoryItem(
                imageUrl: 'assets/storyread1.png',
                title: 'jichuendut_',
                unread: true,
              ),
              StoryItem(
                imageUrl: 'assets/storyread2.png',
                title: 'tukangmakan_',
                unread: true,
              ),
              StoryItem(
                imageUrl: 'assets/storyread3.png',
                title: 'yoasobi',
                unread: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/cindy2.png',
                width: 42,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'cindy',
                style: userPostStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kBlackColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/post1.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/komen.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Disukai oleh ',
                    style: likedPost.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'lalalism_ dan 883 lainnya',
                    style: otherLikedPost.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'cindy',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  Spotify UI Design',
                    style: textPostStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Lihat semua 551 komentar',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/profil.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Tambahkan komentar ...',
                    style: greyTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '12 jam yang lalu',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/cindy2.png',
                width: 42,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'cindy',
                style: userPostStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kBlackColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/post3.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/komen.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Disukai oleh ',
                    style: likedPost.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'lalalism_ dan 883 lainnya',
                    style: otherLikedPost.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'cindy',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  YOASOBI members',
                    style: textPostStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Lihat semua 321 komentar',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'cindyngl_',
                    style: userPostStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '@jenniedut',
                    style: tagPost,
                  ),
                  Text(
                    'ini nih dia',
                    style: userPostStyle,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'lalalism_',
                    style: userPostStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '@jichuu',
                    style: tagPost,
                  ),
                  Text(
                    'barang kw yuk dibeli',
                    style: userPostStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '4 jam yang lalu',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/cindy2.png',
                width: 42,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'cindy',
                style: userPostStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kBlackColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/post2.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/komen.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Disukai oleh ',
                    style: likedPost.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'cindyngl_ dan 1233 lainnya',
                    style: otherLikedPost.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'cindy',
                    style: userPostStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  BIT COIN UI DESIGN',
                    style: textPostStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Lihat semua 333 komentar',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'chongahtukangmakan_',
                    style: userPostStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '@lilis_',
                    style: tagPost,
                  ),
                  Text(
                    'yuk kesini woi',
                    style: userPostStyle,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'gilang_',
                    style: userPostStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'pakai software apa kak?',
                    style: userPostStyle,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'nikitasalim_',
                    style: userPostStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'keren cuy',
                    style: userPostStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '3 menit yang lalu',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/cindy2.png',
                width: 42,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'cindy',
                style: userPostStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kBlackColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/post4.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/komen.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Disukai oleh ',
                    style: likedPost.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'lalalism_ dan 1245 lainnya',
                    style: otherLikedPost.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'cindy',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  Bit Coin UI Design with Figma',
                    style: textPostStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Lihat semua 535 komentar',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/profil.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Tambahkan komentar ...',
                    style: greyTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '7 jam yang lalu',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final unread;

  const StoryItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.unread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            margin: EdgeInsets.only(
              bottom: 13,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Text(
            title,
            style:
                unread ? storyStyle : greyTextStyle.copyWith(color: userPost),
          ),
        ],
      ),
    );
  }
}

Widget bottomNavBar() {
  return Container(
    color: kGreyColor,
    padding: EdgeInsets.only(),
    child: Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      color: kWhiteColor,
      child: BottomNavigationBar(
        backgroundColor: kWhiteColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        elevation: 1,
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/home.png',
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/search.png',
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/reels.png',
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'shop',
            icon: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/shop.png',
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'acc',
            icon: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/profil.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
