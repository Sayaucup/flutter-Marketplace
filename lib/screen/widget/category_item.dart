import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final IconData icon;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const CategoryItem(
      {Key key,
      this.backgroundColor,
      this.size,
      this.icon,
      this.padding,
      this.margin,
      this.iconColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size),
      ),
      padding: padding,
      margin: margin,
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
