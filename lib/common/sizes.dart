import 'package:flutter/material.dart';

class Sizes {

  // This class is used for adding size into a widget.
  // Don't use size like this:
  // Container(size: 10); => it's not make a screen or widget responsive
  // You must used like this:
  // Container(size: Sizes.dp4(context)); => it's make a screen or widget responsive

  static height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static dp4(BuildContext context) {
    return getMediaQuery(context) / 100;
  }

  static dp6(BuildContext context) {
    return getMediaQuery(context) / 70;
  }

  static dp8(BuildContext context) {
    return getMediaQuery(context) / 54;
  }

  static dp10(BuildContext context) {
    return getMediaQuery(context) / 41;
  }

  static dp12(BuildContext context) {
    return getMediaQuery(context) / 34;
  }

  static dp14(BuildContext context) {
    return getMediaQuery(context) / 29;
  }

  static dp16(BuildContext context) {
    return getMediaQuery(context) / 26;
  }

  static dp18(BuildContext context) {
    return getMediaQuery(context) / 23;
  }

  static dp20(BuildContext context) {
    return getMediaQuery(context) / 20;
  }

  static dp22(BuildContext context) {
    return getMediaQuery(context) / 17;
  }

  static dp24(BuildContext context) {
    return getMediaQuery(context) / 16;
  }

  static dp25(BuildContext context) {
    return getMediaQuery(context) / 15;
  }

  static dp28(BuildContext context) {
    return getMediaQuery(context) / 12;
  }

  static dp30(BuildContext context) {
    return getMediaQuery(context) / 10;
  }

  static dp36(BuildContext context) {
    return getMediaQuery(context) / 8;
  }

  static dp48(BuildContext context) {
    return getMediaQuery(context) / 6;
  }

  static dp54(BuildContext context) {
    return getMediaQuery(context) / 4;
  }

  static dp58(BuildContext context) {
    return getMediaQuery(context) / 3;
  }

  static dp60(BuildContext context) {
    return getMediaQuery(context) / 2;
  }

  static dp72(BuildContext context) {
    return getMediaQuery(context) / 1.8;
  }

  static dp80(BuildContext context) {
    return getMediaQuery(context) / 1.5;
  }

  static dp94(BuildContext context) {
    return getMediaQuery(context) / 1.2;
  }

  static getMediaQuery(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    if(isPotrait(height, width)){
      return width;
    }
    return height;
  }

  static bool isPotrait(double height, double width) => height > width;
}