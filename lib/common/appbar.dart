import 'package:flutter/material.dart';

Widget appBar({required String appBarText}) {
  return AppBar(
      backgroundColor: Colors.blue.shade900,
      centerTitle: true,
      title: Text(appBarText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          )));
}
