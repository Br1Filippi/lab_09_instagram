import 'package:flutter/material.dart';
import 'package:lab_09_instagram/data/friends_stories.dart';

class FriendsWidget extends StatelessWidget {
  const FriendsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: friendsStories.length,
      itemBuilder: (context, index) {
        var friend = friendsStories[index];
        return Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: friend['esPropia']
                          ? null
                          : LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.yellow,
                                Colors.red,
                                Colors.purple,
                              ],
                            ),
                      color: friend['esPropia'] ? Colors.grey : null,
                      shape: BoxShape.circle),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/friends/${friend['imagen']}'),
                    ),
                  ),
                ),
              ),
              Text(friend['nombre'])
            ],
          ),
        );
      },
    );
  }
}
