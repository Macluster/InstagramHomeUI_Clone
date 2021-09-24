import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(spreadRadius: 10, color: Colors.white)]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage('assets/Images/home.png'),
              height: 25,
              width: 25,
            ),
            Image(
              image: AssetImage('assets/Images/search.png'),
              height: 25,
              width: 25,
            ),
            Image(
              image: AssetImage('assets/Images/instagram-reels.png'),
              height: 25,
              width: 25,
            ),
            Image(
              image: AssetImage('assets/Images/heart.png'),
              height: 25,
              width: 25,
            ),
            CircleAvatar(
              radius: 15,
            ),
          ],
        ),
      ),
    );
  }
}
