import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/config/config.dart';

class CustomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 0, color: Colors.grey)]),
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(
                    'assets/Images/instaCam.png',
                    height: 27,
                    width: 27,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3, left: 5),
                    child: Image.asset(
                      'assets/Images/instagramText.png',
                      height: 100,
                      width: 130,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/Images/instachat.png',
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/Images/message.png',
                  height: 25,
                  width: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
