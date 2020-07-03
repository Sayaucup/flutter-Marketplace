import 'package:flutter/material.dart';
import 'package:marketplace/screen/widget/search.dart';
import 'package:marketplace/screen/widget/search_voucher.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Voucher',
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
                      left: 0,
                      top: 0,
                      child: Container(
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor,
                            border: Border.all(width: 1, color: Colors.white)),
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
          SearchVoucher()
        ],
      ),
    );
  }
}
