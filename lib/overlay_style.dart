import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setSystemUIOverlayStyle({
  Color? color, 
  bool dark = false,
}) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: color ?? Colors.transparent,
      statusBarIconBrightness: !dark ? Brightness.dark : Brightness.light,
    ),
  );
}