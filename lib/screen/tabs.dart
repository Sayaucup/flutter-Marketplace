import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:marketplace/screen/tabs/account.dart';
import 'package:marketplace/screen/tabs/cart.dart';
import 'package:marketplace/screen/tabs/home.dart';
import 'package:marketplace/screen/tabs/voucher.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  var _tabs = [
    Home(),
    Voucher(),
    Cart(),
    Account(),
  ];
  var controller = PageController();

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Octicons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              )),
          BottomNavigationBarItem(
              icon: Icon(Typicons.tags),
              title: Text('Voucher',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(
              icon: Icon(Typicons.shopping_cart),
              title: Text('Cart',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(
              icon: Icon(Typicons.user_outline),
              title: Text('User',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
