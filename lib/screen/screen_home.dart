// ignore_for_file: prefer_const_constructors, duplicate_ignore, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text('My Quiz APP'),
            backgroundColor: Colors.deepPurple,
            leading: Container()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Image.asset(
              'images/quiz.jpeg',
              width: width * 0.8,
            )),
            Padding(
              padding: EdgeInsets.all(width * 0.024),
            ),
            Text(
              'Flutter Quiz App',
              style: TextStyle(
                fontSize: width * 0.065,
                fontWeight: FontWeight.bold,
              ),
            ),
            // ignore: prefer_const_constructors
            Text(
              'This is just for fun!!',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            _buildStep(width, '1. 랜덤으로 나오는 퀴즈를 풀어보세요.'),
            _buildStep(
                width, '2. 버그 문의는 https://github.com/Ted0527/flutter_quiz_app'),
            _buildStep(width, '3. 만점자는 개발자와 식사를 할 수 있는 기회를 드립니다.'),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            Container(
              padding: EdgeInsets.only(bottom: width * 0.036),
              child: Center(
                child: ButtonTheme(
                  minWidth: width * 0.8,
                  height: height * 0.05,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    // color: Colors.deepPurple,
                    child: Text(
                      'Start!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        width * 0.008,
        width * 0.020,
        width * 0.008,
        width * 0.020,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title),
        ],
      ),
    );
  }
}
