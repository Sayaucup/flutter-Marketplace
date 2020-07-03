import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:marketplace/screen/widget/widget_search.dart';

class SearchVoucher extends StatefulWidget {
  @override
  _SearchVoucherState createState() => _SearchVoucherState();
}

class _SearchVoucherState extends State<SearchVoucher> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
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
              style: TextStyle(fontSize: 17, color: Colors.black54),
              controller: _controller,
              textInputAction: TextInputAction.search,
              autocorrect: true,
              cursorColor: Theme.of(context).primaryColor,
              toolbarOptions: ToolbarOptions(
                  copy: true, paste: true, cut: true, selectAll: true),
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Find a voucher',
              ),
            ),
          ),
          // close()
        ],
      ),
    );
  }
}
