import 'package:flutter/services.dart';

void setPreferredOrientations({
  bool portrait = true,
  bool landscape = false,
  bool all = false,
}) {
  SystemChrome.setPreferredOrientations([
    if (portrait && !all) DeviceOrientation.portraitUp,
    if (portrait && !all) DeviceOrientation.portraitDown,
    if (landscape && !all) DeviceOrientation.landscapeLeft,
    if (landscape && !all) DeviceOrientation.landscapeRight,
  ]);
}