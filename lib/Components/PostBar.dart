import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  final String name;
  final String ProfilePic;
  final String Post;

  PostBar(this.name, this.ProfilePic, this.Post);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(ProfilePic),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(name)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                child: Image.network(
              Post,
              height: 330,
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/Images/heart.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/Images/message.png',
                      height: 27,
                      width: 27,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/Images/instachat.png',
                      height: 27,
                      width: 27,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/Images/save.png',
                  height: 27,
                  width: 27,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(radius: 10),
                Text("Liked By SundarPichai and 20k others")
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Row(
                children: [
                  Text('View all 12300 comments'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Add a comment..")
              ],
            )
          ],
        ),
      ),
    );
  }
}
