import 'package:flutter/material.dart';
import 'package:marketplace/screen/widget/popular.dart';
import 'package:marketplace/screen/widget/search.dart';
import 'package:marketplace/screen/bottomtabs/category.dart';
import 'package:marketplace/screen/widget/slider.dart';
import 'package:moment/moment.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = 'Steve';
  String time = 'morning';

  // var time = Moment().format('HH:mm:ss');

  // setState(() {
  //   if (time >= '05:00:00' && time <= '11:00:00') {
  //     Text('Morning');
  //   } else if (time >= '11:00:00' && time <= '15:00:00') {
  //     Text('Noon');
  //   } else if (time >= '15:00:00' && time <= '18:00:00') {
  //     Text('Afternoon');
  //   } else if (time >= '18:00:00' && time <= '05:00:00') {
  //     Text('Night');
  //   }
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Good\ ${time},\ ${name}',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'FredokaOne',
                    letterSpacing: 0.5,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Icon(
                      Typicons.bell,
                      size: 30,
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor,
                            border: Border.all(width: 1, color: Colors.white)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Search(),
          ImageSlider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Discounts',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'FredokaOne',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Text(
                  'see all',
                  style: TextStyle(fontSize: 13, fontFamily: 'FredokaOne'),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5, bottom: 10),
                child: Text(
                  'ends in',
                  style: TextStyle(fontSize: 13, fontFamily: 'FredokaOne'),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 23,
                height: 23,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '01',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  ':',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'FredokaOne',
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                width: 23,
                height: 23,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '00',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  ':',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'FredokaOne',
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                width: 23,
                height: 23,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '00',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              color: Theme.of(context).primaryColor,
              child: Popular())
        ],
      ),
    );
  }
}
