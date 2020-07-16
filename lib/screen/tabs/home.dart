import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:marketplace/screen/widget/category.dart';
import 'package:marketplace/screen/widget/discount.dart';
import 'package:marketplace/screen/widget/food_item.dart';
import 'package:marketplace/screen/widget/foryou.dart';
import 'package:marketplace/screen/widget/popular.dart';
import 'package:marketplace/screen/widget/search.dart';
import 'package:marketplace/screen/widget/slider.dart';
import 'package:moment/moment.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Colors.white,
        fontSize: 15);
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   this.getJSON();
  // }

  List data;
  Future<Map> getJSON() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url = 'https://unsplash.com/napi/photos/Q14J2k8VE3U/related';

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      setState(() {
        data = jsonResponse['results'];
      });
      print(jsonResponse);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Widget _build(item) => Container(
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              imageUrl: item['urls']['small'],
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            ListTile(
              title: Text(item['user']['name']),
              subtitle: Text(item['alt_description']),
            )
          ],
        ),
      );
  static const duration = const Duration(seconds: 1);
  int secondPassed = 3600;
  Timer timer;

  void handleTick() {
    setState(() {
      secondPassed = secondPassed - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    int seconds = secondPassed % 60;
    int minutes = secondPassed ~/ 60;
    int hours = secondPassed ~/ (60 * 60);
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
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Hi, ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                          fontFamily: 'FredokaOne',
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        'Ucup',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'FredokaOne',
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Stack(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
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
                              border:
                                  Border.all(width: 1, color: Colors.white)),
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
                  ),
                ),
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
          Container(height: 100, child: Category()),
          SizedBox(
            height: 20,
          ),
          //discount
          Container(
            height: 365,
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
                          hours.toString().padLeft(2, '0'),
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
                          minutes.toString().padLeft(2, '0'),
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
                          seconds.toString().padLeft(2, '0'),
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'For you',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'FredokaOne',
                    letterSpacing: 0.5,
                  ),
                ),
                Icon(Icons.filter_list)
              ],
            ),
          ),
          Foryou(),
          // GridView.count(
          //   padding: EdgeInsets.symmetric(horizontal: 15),
          //   physics: ClampingScrollPhysics(),
          //   crossAxisCount: 2,
          //   crossAxisSpacing: 15,
          //   shrinkWrap: true,
          //   childAspectRatio: 1 / 1.6,
          //   children: data.map((e) {
          //     return InkWell(
          //       onTap: () {
          //         toast();
          //       },
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: <Widget>[
          //           AspectRatio(
          //             aspectRatio: 1 / 0.5,
          //             child: ClipRRect(
          //               borderRadius: BorderRadius.circular(10),
          //               child: Image(
          //                 image: NetworkImage(e['urls']['small']),
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(3),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: <Widget>[
          //                 Text(
          //                   e['user']['name'],
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.bold,
          //                       color: Theme.of(context).primaryColor),
          //                 ),
          //                 Text(
          //                   e['alt_description'],
          //                   overflow: TextOverflow.ellipsis,
          //                   style: TextStyle(fontWeight: FontWeight.bold),
          //                 ),
          //               ],
          //             ),
          //           )
          //         ],
          //       ),
          //     );
          //   }).toList(),
          //   //   itemBuilder: (ctx, i) {
          //   //   return _build(data[i]);
          //   // },
          // )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toast();
        },
        tooltip: 'whats?',
        child: Icon(
          Entypo.help,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
