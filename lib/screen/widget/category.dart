import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class SLiderModel {
  final String image;
  final String name;
  final String desc;

  SLiderModel(this.image, this.name, this.desc);
}

List<SLiderModel> slider = [
  SLiderModel(
    'assets/img/vegetable.png',
    'vegetables',
    '30-60% of calories',
  ),
  SLiderModel(
    'assets/img/qwe.jpg',
    'fruits',
    '30-40% of calories',
  ),
  SLiderModel(
    'assets/img/coffee-beans.png',
    'seeds, nuts',
    '10-40% of calories',
  ),
  SLiderModel(
    'assets/img/dairy.png',
    'egg, fish, milk',
    'less than 10% of calories',
  ),
  SLiderModel(
    'assets/img/lollipop.png',
    'sweet fat',
    'rarely',
  ),
];

class _CategoryState extends State<Category> {
  String formatDate = DateFormat("EEEE").format(DateTime.now());
  String formatDatee = DateFormat("MMMMd").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: slider.map((i) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  width: 155,
                  height: 60,
                  margin: EdgeInsets.symmetric(
                    horizontal: 7,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // ClipRRect(
                      //     borderRadius: BorderRadius.circular(10),
                      //     child: Image.asset(
                      //       i.image,
                      //       fit: BoxFit.cover,
                      //       height: 100,
                      //       width: 100,
                      //     )),
                      Text(
                        i.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'BebasNeue',
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        i.desc,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'FredokaOne',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
