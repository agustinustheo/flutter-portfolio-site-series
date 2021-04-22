import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/common/sizes.dart';
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
      title: NavBarText(
        this.title, 
        fontSize: Sizes.dp14(context),
      ),
      backgroundColor: ColorPalette.primaryColor,
      actions: [
        context != null ? Container(
          width: Sizes.dp72(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: NavBarText(
                  'About', 
                  fontSize: Sizes.dp14(context)
                ),
                onTap: () {}
              ),
              InkWell(
                child: NavBarText(
                  'Experience', 
                  fontSize: Sizes.dp14(context)
                ),
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
  final double fontSize;

  const NavBarText(
    this.text,
    {
      this.fontSize = 18.0,
      Key key,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: this.fontSize,
          fontWeight: FontWeight.w500,
          letterSpacing: 1
        ),
      )
    );
  }
}