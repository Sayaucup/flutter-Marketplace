import 'package:flutter/material.dart';
import 'package:marketplace/screen/widget/food_item.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Cart extends StatefulWidget {
  final Item items;

  const Cart({Key key, this.items}) : super(key: key);
  @override
  _CartState createState() => _CartState();
}

class Cartt {
  final String image;
  final String name;
  final String price;
  final String address;
  final Icon rating;

  Cartt(this.image, this.name, this.price, this.address, this.rating);
}

class _CartState extends State<Cart> {
  int i = 1;

  var cart = [
    Cartt(
        'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Pizza',
        '70.000',
        'Kretek',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f))),
    Cartt(
        'https://images.pexels.com/photos/1998635/pexels-photo-1998635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Baked pastry',
        '70.000',
        'Bantul',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f))),
    Cartt(
        'https://images.pexels.com/photos/1437629/pexels-photo-1437629.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Juice',
        '70.000',
        'Giwangan',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        children: <Widget>[
          Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 38, right: 15, bottom: 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Cart',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'FredokaOne',
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Icon(
                        Typicons.bell,
                        size: 30,
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
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 400,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: cart.map((items) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: NetworkImage(items.image),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  items.name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(items.price)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Typicons.trash,
                                color: Theme.of(context).primaryColor),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                i--;
                              });
                            },
                            icon: Icon(Typicons.minus,
                                color: Theme.of(context).primaryColor),
                          ),
                          Text(
                            '$i',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                i++;
                              });
                            },
                            icon: Icon(Typicons.plus,
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.blueAccent[300],
                        height: 25,
                        thickness: 2,
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'FredokaOne',
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        'Rp.200.000',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'FredokaOne',
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'FredokaOne',
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
