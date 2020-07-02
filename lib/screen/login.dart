import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/screen/tabs.dart';
import 'package:marketplace/screen/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _form = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _Login() async {
    if (emailController.text == 'ucup@saya.com' &&
        passwordController.text == 'ucup') {}
  }

  void toast() {
    Fluttertoast.showToast(
        msg: "In Progress",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Colors.white,
        fontSize: 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: Form(
          key: _form,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Image.asset(
                'assets/img/logo.png',
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    borderRadius: BorderRadius.circular(7),
                    onTap: () {
                      toast();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/facebook.png',
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(width: 20,),
                  InkWell(
                    onTap: () {
                      toast();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/google.jpg',
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                'or',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      validator: (e) =>
                          !e.contains('@') ? 'Not a valid email' : null,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        labelText: 'Email ID',
                      ),
                      controller: emailController,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (e) =>
                          e.length < 5 ? 'Password too short' : null,
                      controller: passwordController,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: InkWell(
                    onTap: () {
                      toast();
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 13, color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      // if (_form.currentState.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tabs()));
                      // }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13),
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      )),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have an account?',
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Register();
                        }));
                      },
                      child: Text(
                        'Register Now',
                        style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
