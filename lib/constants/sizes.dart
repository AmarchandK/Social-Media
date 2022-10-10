import 'package:flutter/widgets.dart';

const h20 = SizedBox(height: 20);
const h10 = SizedBox(height: 10);
const h30 = SizedBox(height: 30);
widthSize(context) {
  return MediaQuery.of(context).size.width;
}

heightSize(context) {
  return MediaQuery.of(context).size.height;
}