import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Typicons.arrow_left),
        onPressed: () => Navigator.of(context).pop(),
      )),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              'Register to Fresh Market',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'FredokaOne',
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: <Widget>[
                TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Center(
                    child: Text(
                  'Register',
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1),
                )),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'By registering you agree to ',
                style: TextStyle(fontSize: 11, color: Colors.black54),
              ),
              Text(
                'Terms & Conditions',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'and ',
                style: TextStyle(fontSize: 11, color: Colors.black54),
              ),
              Text(
                'Privacy Policy ',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                'of the Fresh Market',
                style: TextStyle(fontSize: 11, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
