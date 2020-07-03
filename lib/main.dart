import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:marketplace/screen/bottomtabs/home.dart';
import 'package:marketplace/screen/login.dart';
import 'package:marketplace/screen/tabs.dart';

void main() {
  var now = DateTime.now();
  print(DateFormat('hh:mm:ss').format(now));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Color(0xffc0392b),
        accentColor: Color(0xffecf0f1),
        fontFamily: 'BalsamiqSans'),
    home: Tabs(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimeOut() {
    return Timer(Duration(seconds: 4), changeScreen);
  }

  changeScreen() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Tabs();
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimeOut();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).primaryColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Theme.of(context).primaryColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/img/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Lottie.asset('assets/animasi/anim.json',
                height: MediaQuery.of(context).size.height * 0.2),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class TabbedAppBarSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             // title: const Text('Tabbed AppBar'),
//             bottom: TabBar(isScrollable: true, tabs: [
//               Tab(text: 'Tab 1', icon: Icon(Icons.directions_car)),
//               Tab(text: 'Tab 2', icon: Icon(Icons.directions_walk)),
//               Tab(text: 'Tab 3', icon: Icon(Icons.directions_bike)),
//             ]),
//           ),
//           body: TabBarView(
//             children: [
//               ListView(
//                 children: list,
//               ),
//               ListView(
//                 children: list,
//               ),
//               ListView(
//                 children: list,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// List<Widget> list = <Widget>[
//   ListTile(
//     title: Text('CineArts at the Empire',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('85 W Portal Ave'),
//     leading: Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('The Castro Theater',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('429 Castro St'),
//     leading: Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('Alamo Drafthouse Cinema',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('2550 Mission St'),
//     leading: Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('Roxie Theater',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('3117 16th St'),
//     leading: Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('United Artists Stonestown Twin',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('501 Buckingham Way'),
//     leading: Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('AMC Metreon 16',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('135 4th St #3000'),
//     leading: Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   Divider(),
//   ListTile(
//     title: Text('K\'s Kitchen',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('757 Monterey Blvd'),
//     leading: Icon(
//       Icons.restaurant,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('Emmy\'s Restaurant',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('1923 Ocean Ave'),
//     leading: Icon(
//       Icons.restaurant,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('Chaiya Thai Restaurant',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('272 Claremont Blvd'),
//     leading: Icon(
//       Icons.restaurant,
//       color: Colors.blue[500],
//     ),
//   ),
//   ListTile(
//     title: Text('La Ciccia',
//         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('291 30th St'),
//     leading: Icon(
//       Icons.restaurant,
//       color: Colors.blue[500],
//     ),
//   ),
// ];

// void main() {
//   runApp(TabbedAppBarSample());
// }
