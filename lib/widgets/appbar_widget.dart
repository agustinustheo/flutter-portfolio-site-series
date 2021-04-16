import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/material.dart';

class MyAppBar {
  final String title;
  final BuildContext context;

  MyAppBar(this.title, {this.context});

  AppBar getAppBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: ColorPalette.buttonTextColor
      ),
      title: Text(this.title, style: TextStyle(color: ColorPalette.buttonTextColor)),
      backgroundColor: ColorPalette.primaryColor,
      actions: [
        context != null ? Container(
          width: 300.0,
          padding: EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: NavBarText('About'),
                onTap: () {}
              ),
              InkWell(
                child: NavBarText('Experience'),
                onTap: () {}
              )
            ],
          )
        ) : SizedBox()
      ],
    );
  }
}

class NavBarText extends StatelessWidget {
  final String text;

  const NavBarText(
    this.text,
    {
      Key key,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 1
        ),
      )
    );
  }
}