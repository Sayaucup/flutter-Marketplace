import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 100,
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Theme.of(context).accentColor, width: 2)),
          child: Column(
            children: <Widget>[
              Container(
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2255920/pexels-photo-2255920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                        fit: BoxFit.cover)),
              ),
              Text('delectus'),
              Text(
                '\$10',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black,
                  decorationThickness: 2.5,
                ),
              ),
              Text('\$5')
            ],
          ),
        ),
        Container(
          width: 100,
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Theme.of(context).accentColor, width: 2)),
          child: Column(
            children: <Widget>[
              Container(
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2255920/pexels-photo-2255920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                        fit: BoxFit.cover)),
              ),
              Text('distinctio'),
              Text(
                '\$10',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black,
                  decorationThickness: 2.5,
                ),
              ),
              Text('\$5')
            ],
          ),
        ),
        Container(
          width: 100,
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Theme.of(context).accentColor, width: 2)),
          child: Column(
            children: <Widget>[
              Container(
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2255920/pexels-photo-2255920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                        fit: BoxFit.cover)),
              ),
              Text('fugiat'),
              Text(
                '\$10',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black,
                  decorationThickness: 2.5,
                ),
              ),
              Text('\$5')
            ],
          ),
        ),
      ],
    );
  }
}
