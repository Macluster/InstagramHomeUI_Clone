import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/StatusModel.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 95,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: model.length,
          itemBuilder: (context, ind) =>
              StatusCircleTextCombo(model[ind].name, model[ind].image),
        ),
      ),
    );
  }
}

class StatusCircleTextCombo extends StatelessWidget {
  final String name;
  final String image;
  StatusCircleTextCombo(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 40,
          ),
          Container(
              width: 40,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 9),
                ),
              )),
        ],
      ),
    );
  }
}

List<StatusModel> model = [
  StatusModel(
      name: "Zuckerburg",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/5/5f/Mark_Zuckerberg_F8_2019_Keynote_%2847721886632%29_%28cropped%29.jpg'),
  StatusModel(
      name: "Bill Gates",
      image:
          'https://image.cnbcfm.com/api/v1/image/105778430-1551897565882microsoftfounderbillgatesspeaking.jpg?v=1585592012&w=717&h=403'),
  StatusModel(
      name: "sachin Tendulkar",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg'),
  StatusModel(
      name: "sachin Tendulkar",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg'),
  StatusModel(
      name: "sachin Tendulkar",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg'),
  StatusModel(
      name: "sachin Tendulkar",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg'),
  StatusModel(
      name: "sachin Tendulkar",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/2/25/Sachin_Tendulkar_at_MRF_Promotion_Event.jpg')
];
