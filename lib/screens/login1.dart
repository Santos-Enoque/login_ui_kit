import 'package:flutter/material.dart';
import 'package:login_ui_kit/services/functions.dart';
import 'package:login_ui_kit/services/styles.dart';
import 'package:login_ui_kit/widgets/custom_text.dart';

import 'loginTwo.dart';

class LoginOne extends StatefulWidget {
  @override
  _LoginOneState createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: CustomText(msg: "Welcome back!", size: 36, weight: FontWeight.bold,),
                ),
              ],
            ),
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText(msg: "Please login to your account!", size: 22, weight: FontWeight.w600, color: grey,),
          ],
        ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email Address',
                    hintStyle: TextStyle(fontSize: 20)

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 20)
                    ),
                  ),

                  Positioned(
                      top: 13,
                      right: 20,
                      child: CustomText(msg: "Forgot?", color: blue,))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: green
                ),
                child: GestureDetector(
                  onTap: (){
                    changeScreen(context, LoginTwo());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: CustomText(msg: "LOGIN", color: white, size: 24, weight: FontWeight.w600,),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(msg: "REGISTER NOW", size: 20, weight: FontWeight.bold, color: grey,),
              ],
            ),



          ],

        ),
      ),
    );
  }
}
