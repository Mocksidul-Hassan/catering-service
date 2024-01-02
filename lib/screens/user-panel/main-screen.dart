//ignore_for_file: file_names, prefer_const_constructors

import 'package:e_cataring/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppConstant.appScendoryColor,
          statusBarIconBrightness: Brightness.light),
        backgroundColor: Colors.blueAccent,
        title: Text(
          AppConstant.appMainName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,  
        ),
      );
  }
}
