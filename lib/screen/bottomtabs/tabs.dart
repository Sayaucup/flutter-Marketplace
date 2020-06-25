import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:marketplace/screen/bottomtabs/account.dart';
import 'package:marketplace/screen/bottomtabs/cart.dart';
import 'package:marketplace/screen/bottomtabs/home.dart';
import 'package:marketplace/screen/bottomtabs/search.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  var _tabs = [
    Home(),
    Search(),
    Cart(),
    Account(),
  ];

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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Octicons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Octicons.search),title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Zocial.cart),title: Text('Cart')),
          BottomNavigationBarItem(icon: Icon(Typicons.user_outline),title: Text('Account')),
        ],
      ),
    );
  }
}
