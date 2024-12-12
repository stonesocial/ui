import 'package:flutter/material.dart';

const locales = ['en', 'de', 'es', 'pt', 'ru', 'zh'];

extension SupportedLocales on List<String> {
  List<Locale> get supportedLocales => List.generate(
    locales.length,
    (index) => Locale(locales[index]),
  );
}