import 'dart:ui';

String loadImage(String name) {
  return 'assets/images/$name';
}


Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}