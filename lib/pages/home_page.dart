import 'package:flineicons/flineicons.dart';
import 'package:flutter/material.dart';
import 'package:lab_09_instagram/data/friends_stories.dart';
import 'package:lab_09_instagram/data/posts.dart';
import 'package:lab_09_instagram/widgets/friends_widget.dart';
import 'package:lab_09_instagram/widgets/header_widget.dart';
import 'package:lab_09_instagram/widgets/navegar_widget.dart';
import 'package:lab_09_instagram/widgets/posts_widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            HeaderWidget(),
            Expanded(
              flex: 1,
              child: FriendsWidget(),
            ),
            Expanded(
              flex: 6,
              child: PostsWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavegarWidget(),
    );
  }
}
