import 'package:flutter/material.dart';
import 'package:marketplace/screen/widget/appbar.dart';
import 'package:marketplace/screen/widget/category.dart';
import 'package:marketplace/screen/widget/slider.dart';
import 'package:moment/moment.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var time = Moment().format('HH:mm:ss');

  dynamic good() {
    setState(() {
      if (time >= '05:00:00' && time <= '11:00:00') {
        Text('Morning');
      } else if (time >= '11:00:00' && time <= '15:00:00') {
        Text('Noo');
      } else if (time >= '15:00:00' && time <= '18:00:00') {
        Text('Afternoon');
      } else if (time >= '18:00:00' && time <= '05:00:00') {
        Text('Night');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Good${time}'),
              // Text(good()),
            ],
          ),
          ImageSlider(),
          Appbar(),
          SizedBox(
            height: 20,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, top: 20),
          //   child: Center(
          //     child: Text(
          //       'Category',
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontFamily: 'BebasNeue',
          //         color: Theme.of(context).primaryColor,
          //       ),
          //     ),
          //   ),
          // ),
          Category(),
          Text('Popular')
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, top: 5),
          //   child: Text(
          //     'Recommend for you',
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontFamily: 'BebasNeue',
          //       color: Theme.of(context).primaryColor,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
