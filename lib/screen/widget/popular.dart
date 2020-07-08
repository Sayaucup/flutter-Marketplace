import 'dart:math';

import 'package:flutter/material.dart';
import 'package:marketplace/screen/food.dart';
import 'package:marketplace/screen/widget/food_item.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  List<Item> popular = [
    Item(
        'https://images.pexels.com/photos/3535383/pexels-photo-3535383.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Steak and fries',
        '100.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3',
        '342'),
    Item(
        'https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'hamburger and fries',
        '100.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '2',
        '216'),
    Item(
        'https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Cooked food',
        '100.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '4',
        '219'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 230,
      child: ListView(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: popular.map((items) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Food(items: items)));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: items.image,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 157,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(items.image),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        items.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        'Rp.${items.price}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          items.rating,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Text(
                              items.rating2,
                              style: TextStyle(
                                fontFamily: 'FredokaOne',
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text('(${items.review})',
                              style: TextStyle(
                                fontFamily: 'FredokaOne',
                                fontSize: 13,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
