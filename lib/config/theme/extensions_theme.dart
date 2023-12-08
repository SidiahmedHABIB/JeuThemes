import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get _theme => Theme.of(this);
  TextTheme get myTextTheme => _theme.textTheme;
  ColorScheme get MyColortheme => _theme.colorScheme;
  Size get deviceSize => MediaQuery.of(this).size;
}
