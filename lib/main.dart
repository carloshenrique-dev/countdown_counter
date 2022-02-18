import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/countdown/countdown_module.dart';

void main() {
  runApp(const CountdownTimerApp());
}

class CountdownTimerApp extends StatelessWidget {
  const CountdownTimerApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Countdown Timer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        ...CountdownModule().routers,
      ],
      initialRoute: '/countdown',
    );
  }
}
