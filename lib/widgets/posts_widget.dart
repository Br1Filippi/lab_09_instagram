import 'package:flutter/material.dart';
import 'package:lab_09_instagram/data/posts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        var post = posts[index];
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Container(
                    height: 65,
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.yellow,
                                Colors.red,
                                Colors.purple,
                              ],
                            ),
                            shape: BoxShape.circle),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/friends/${post['imagenUsuario']}'))),
                      ),
                    ),
                  ),
                  Text(post['nombre']),
                  Spacer(),
                  Text('...'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Image(
                  image: AssetImage('assets/images/posts/${post['imagen']}')),
            ),
            Row(
              children: [
                Icon(
                  MdiIcons.heartOutline,
                  size: 35,
                ),
                Text('31'),
                Icon(
                  MdiIcons.chatOutline,
                  size: 35,
                ),
                Icon(
                  MdiIcons.sendOutline,
                  size: 35,
                ),
                Spacer(),
                Icon(
                  MdiIcons.bookmarkOutline,
                  size: 35,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
