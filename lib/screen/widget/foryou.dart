import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/screen/food.dart';
import 'package:marketplace/screen/widget/food_item.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';

class Foryou extends StatefulWidget {
  @override
  _ForyouState createState() => _ForyouState();
}

class _ForyouState extends State<Foryou> {
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

  var items = [
    Item(
        "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Burger",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3',
        '424'),
    Item(
        "https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Cake",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '4.2',
        '852'),
    Item(
        "https://images.pexels.com/photos/840216/pexels-photo-840216.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Fried spring roll",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3',
        '424'),
    Item(
        "https://images.pexels.com/photos/139746/pexels-photo-139746.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sandwich meal",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3.2',
        '742'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GridView.count(
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        shrinkWrap: true,
        childAspectRatio: 1 / 1.6,
        children: items.map((items) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Food(
                            items: items,
                          )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                        tag: items.image,
                        child: Image(
                          image: NetworkImage(items.image),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
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
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
