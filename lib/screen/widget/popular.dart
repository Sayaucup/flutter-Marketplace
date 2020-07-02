import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class popular {
  final String name;
  final String image;
  final String desc;
  final String price;

  popular(this.name, this.image, this.desc, this.price);
}

class _PopularState extends State<Popular> {
  List<popular> i = [
    popular(
        '1',
        'https://images.pexels.com/photos/2255920/pexels-photo-2255920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        '1',
        '1'),
    popular(
        '1',
        'https://images.pexels.com/photos/2255920/pexels-photo-2255920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        '1',
        '1'),
    popular(
        '1',
        'https://images.pexels.com/photos/2255920/pexels-photo-2255920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        '1',
        '1'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GridView.count(
              crossAxisCount: 3,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 1 / 1.4,
              children: i.map((e) {
                return Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            height: 150,
                            margin: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    e.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  e.name,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'BebasNeue',
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Text(
                                  e.price,
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'FredokaOne',
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }).toList()),
        ),
      ],
    );
  }
}
