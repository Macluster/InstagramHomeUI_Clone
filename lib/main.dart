import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/BottomBar.dart';
import 'package:instagram_clone/Components/CustomeAppBar.dart';
import 'package:instagram_clone/Components/PostBar.dart';
import 'package:instagram_clone/Components/StatusBar.dart';
import 'package:instagram_clone/Models/PostModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            CustomeAppBar(),
            Container(
              height: mediaQueryData.size.height - 120,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: postmodel.length + 1,
                itemBuilder: (context, ind) {
                  if (ind == 0)
                    return StatusBar();
                  else
                    return PostBar(postmodel[ind - 1].name,
                        postmodel[ind - 1].ProfilePic, postmodel[ind - 1].post);
                },
              ),
            ),
            BottomBar(),
          ],
        ),
      ),
    ));
  }
}

List<PostModel> postmodel = [
  PostModel(
      "Zuckerburg",
      'https://upload.wikimedia.org/wikipedia/commons/5/5f/Mark_Zuckerberg_F8_2019_Keynote_%2847721886632%29_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/5/5f/Mark_Zuckerberg_F8_2019_Keynote_%2847721886632%29_%28cropped%29.jpg'),
  PostModel(
      "Bill gates",
      'https://image.cnbcfm.com/api/v1/image/105778430-1551897565882microsoftfounderbillgatesspeaking.jpg?v=1585592012&w=717&h=403',
      'https://image.cnbcfm.com/api/v1/image/105778430-1551897565882microsoftfounderbillgatesspeaking.jpg?v=1585592012&w=717&h=403')
];
