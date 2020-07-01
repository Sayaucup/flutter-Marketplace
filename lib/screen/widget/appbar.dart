import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:marketplace/screen/widget/search.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              height: MediaQuery.of(context).size.height * 0.08,
              // width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                    child: Icon(
                      Ionicons.ios_search,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    'Search products',
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(left: 10, right: 5, top: 10),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Icon(
        //       Typicons.shopping_cart,
        //       size: 30,
        //       color: Theme.of(context).primaryColor,
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.only(left: 5, right: 10, top: 10),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Icon(
        //       Entypo.bell,
        //       size: 25,
        //       color: Theme.of(context).primaryColor,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
