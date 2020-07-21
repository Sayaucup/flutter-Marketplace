import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/screen/widget/search.dart';
import 'package:marketplace/screen/widget/search_voucher.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Voucher extends StatefulWidget {
  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  List voucherr = [
    'assets/img/voucher.png',
    'assets/img/voucher.png',
    'assets/img/voucher.png',
    'assets/img/voucher.png',
    'assets/img/voucher.png'
  ];
  void toast() {
    Fluttertoast.showToast(
        msg: "successfully copied",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Colors.white,
        fontSize: 15);
  }

  data() {
    return Column(
      children: voucherr.map((e) {
        return InkWell(
          onLongPress: () {
            toast();
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(e),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 44, right: 15),
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
            SearchVoucher(),
            Container(
                height: MediaQuery.of(context).size.height - 202,
                child: SingleChildScrollView(
                  child: data(),
                  scrollDirection: Axis.vertical,
                )),
          ],
        ));
  }
}
