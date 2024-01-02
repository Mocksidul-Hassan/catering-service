// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_call_super

import 'dart:async';

import 'package:e_cataring/screens/auth-ui/welcome-screen.dart';
import 'package:e_cataring/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  @override 
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), (){
      Get.offAll(() => WelcomeScreen());
    });
  }
  
  
  @override 
  Widget build(BuildContext context) {
    //final Size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appScendoryColor,
    appBar: AppBar(
      backgroundColor: AppConstant.appScendoryColor,
      elevation: 0,
    ),
    body: Container(child: Column(
      children: [
        Expanded(
          child: Container(
            width: Get.width,
            alignment: Alignment.center,
            child: Lottie.asset('assets/images/Animation - 1703618528062.json'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          width: Get.width,
          alignment: Alignment.center,
          child: Text(
          AppConstant.appPoweredBy,
        style: TextStyle(color: AppConstant.appTextColor,
        fontSize: 12.0,
        fontWeight: FontWeight.bold),
        ),
        )
      ],)),
    );
  }
}