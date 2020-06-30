import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _controller = TextEditingController();

  Widget close() {
    return Padding(
      padding: EdgeInsets.only(right: 10, bottom: 5),
      child: InkWell(
        onTap: () {
          _controller.clear();
        },
        child: Icon(
          Icons.close,
          size: 20,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Typicons.arrow_left,
                size: 25,
                color: Theme.of(context).primaryColor,
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width - 60,
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
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    autocorrect: true,
                    autofocus: true,
                    cursorColor: Theme.of(context).primaryColor,
                    toolbarOptions: ToolbarOptions(
                        copy: true, paste: true, cut: true, selectAll: true),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Search here...',
                    ),
                  ),
                ),
                close()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
