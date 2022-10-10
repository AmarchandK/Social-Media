import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media/view/login/auth_page.dart';
import 'constants/controller_int.dart';
import 'constants/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        onInit: () => onInit(),
        debugShowCheckedModeBanner: false,
        theme: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: wColor),
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: yColor,
              ),
        ),
        home: const Authentication());
  }
}
