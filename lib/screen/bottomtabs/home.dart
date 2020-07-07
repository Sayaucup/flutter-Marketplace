import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:marketplace/screen/widget/category_item.dart';
import 'package:marketplace/screen/widget/discount.dart';
import 'package:marketplace/screen/widget/foryou.dart';
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
  void toast() {
    Fluttertoast.showToast(
        msg: "In Progress",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Colors.white,
        fontSize: 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          //top
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Good\ ${time},\ ${name}',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'FredokaOne',
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        toast();
                      },
                      child: Icon(
                        Typicons.bell,
                        size: 30,
                      ),
                    ),
                    Positioned(
                      right: 0,
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
          //search
          Search(),
          // ImageSlider(),
          SizedBox(
            height: 20,
          ),
          //category
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                CategoryItem(
                  icon: Typicons.th_large_outline,
                  size: 70,
                  margin: EdgeInsets.only(left: 15),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                CategoryItem(
                  icon: Typicons.lightbulb,
                  size: 70,
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                CategoryItem(
                  icon: EvaIcons.hardDriveOutline,
                  size: 70,
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                CategoryItem(
                  icon: EvaIcons.printerOutline,
                  size: 70,
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                CategoryItem(
                  icon: EvaIcons.videoOutline,
                  size: 70,
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                CategoryItem(
                  icon: EvaIcons.umbrellaOutline,
                  size: 70,
                  margin: EdgeInsets.only(left: 10, right: 15),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //discount
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Discounts',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'FredokaOne',
                            color: Theme.of(context).accentColor),
                      ),
                      InkWell(
                        onTap: () {
                          toast();
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'FredokaOne',
                              color: Theme.of(context).accentColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 5, bottom: 10),
                      child: Text(
                        'ends in',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'FredokaOne',
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '01',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'FredokaOne',
                              color: Theme.of(context).primaryColor),
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
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                    Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '00',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'FredokaOne',
                              color: Theme.of(context).primaryColor),
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
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                    Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '00',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'FredokaOne',
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Discount(),
                )
              ],
            ),
          ),
          //for you
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular food',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'FredokaOne',
                    letterSpacing: 0.5,
                  ),
                ),
                InkWell(
                  onTap: () {
                    toast();
                  },
                  child: Text(
                    'see all',
                    style: TextStyle(fontSize: 13, fontFamily: 'FredokaOne'),
                  ),
                ),
              ],
            ),
          ),
          Popular(),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              'For you',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'FredokaOne',
                letterSpacing: 0.5,
              ),
            ),
          ),
          Product()
        ],
      ),
    );
  }
}
