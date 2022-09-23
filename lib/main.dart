import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterwitherapp22/model/network/dio_helper.dart';
import 'layout/newseLayeout.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white38,statusBarBrightness: Brightness.dark),
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black,size: 30),
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 22,fontWeight:FontWeight.bold),

        ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
           )
      ),
      home:NewsLayout(),
    );
  }
}


