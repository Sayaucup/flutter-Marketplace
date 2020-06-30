import 'package:flutter/material.dart';
import 'package:marketplace/screen/widget/appbar.dart';
import 'package:marketplace/screen/widget/category.dart';
import 'package:marketplace/screen/widget/slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Appbar(),
          SizedBox(
            height: 20,
          ),
          ImageSlider(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Category',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'BebasNeue',
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Category(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Recommend for you',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'BebasNeue',
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
