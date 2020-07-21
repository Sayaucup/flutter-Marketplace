import 'package:flutter/material.dart';
import 'package:marketplace/screen/food.dart';
import 'package:marketplace/screen/widget/food_item.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Breakfast extends StatefulWidget {
  @override
  _BreakfastState createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  var items = [
    Item(
        "https://images.pexels.com/photos/949069/pexels-photo-949069.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Round white",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3',
        '424'),
    Item(
        "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Dessert",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '4.2',
        '852'),
    Item(
        "https://images.pexels.com/photos/139746/pexels-photo-139746.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sandwich meal",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3.2',
        '742'),
    Item(
        "https://images.pexels.com/photos/103124/pexels-photo-103124.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Fried egg and bread pklatter",
        '70.000',
        '80.000',
        '90.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '4.1',
        '721'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Typicons.arrow_left,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Breakfast'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.filter_list, size: 30, color: Colors.white),
            )
          ],
        ),
        body: Container(
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
                              overflow: TextOverflow.ellipsis,
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
        ));
  }
}
