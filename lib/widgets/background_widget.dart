import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/material.dart';

class PlainBackground extends StatelessWidget{
  final Widget child;
  final AppBar appBar;
  final bool isCenter;

  PlainBackground({
    this.child,
    this.appBar,
    this.isCenter = false
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorPalette.backgroundPrimaryColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              child: isCenter ? Center(child: SingleChildScrollView(child: child)) : SingleChildScrollView(child: child),
            ),
          ),
        ],
      )
    );
  }
}