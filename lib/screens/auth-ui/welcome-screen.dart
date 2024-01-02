// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app-constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appMainColor,
        title: Text("Savor The Moment, Indulge in Flavor"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(child: Lottie.asset('assets/images/Animation - 1703682901895.json'),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text("Sign in to a Taste Experience Like Never Before",
            style: TextStyle(fontSize: 16.0,
            fontWeight: FontWeight.bold,),
            ),
          ),
          SizedBox(height: Get.height / 12,
          ),
          Material(
            child: Container(
              width: Get.width / 1.2,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: AppConstant.appScendoryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            child: TextButton.icon(
              icon: Image.asset("assets/images/google-logo-g-suite-google-guava-google-plus-thumbnail.jpg", 
              width: Get.width / 12,
              height: Get.height / 12,
              ),
              label: Text("Sign in With Google",
              style: TextStyle(color: AppConstant.appTextColor),
              ),
              onPressed: (){},
            ),
          ),
          ),

          SizedBox(height: Get.height / 50,
          ),


          Material(
            child: Container(
              width: Get.width / 1.2,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: AppConstant.appScendoryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            child: TextButton.icon(
              icon: Icon(Icons.email, color: AppConstant.appTextColor,),
              label: Text("Sign in With Email",
              style: TextStyle(color: AppConstant.appTextColor),
              ),
              onPressed: (){},
            ),
          ),
          )



        ], 
      )
      ),
    );
  }
}