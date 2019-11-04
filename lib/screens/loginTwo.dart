import 'package:flutter/material.dart';
import 'package:login_ui_kit/screens/loginThree.dart';
import 'package:login_ui_kit/services/functions.dart';
import 'package:login_ui_kit/services/styles.dart';
import 'package:login_ui_kit/widgets/custom_text.dart';
import 'package:login_ui_kit/widgets/logo.dart';
import 'package:login_ui_kit/widgets/placeholder_txt.dart';
import 'package:login_ui_kit/widgets/round_btn.dart';
import 'package:login_ui_kit/widgets/round_text_field.dart';

class LoginTwo extends StatefulWidget {
  @override
  _LoginTwoState createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Container()),

           Logo(),

            PlaceHolderText(),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: RoundTextField("Email Address")
            ),

            SizedBox(height: 10,),

            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: RoundTextField("Password")
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left:15, right: 15),
              child: RoundBtn(msg: "Login", function: (){
                changeScreen(context, LoginThree());
              },)
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(msg: "Password", color: red,),
                SizedBox(width: 10,),
                CustomText(msg: "|", color: red,),
                SizedBox(width: 10,),
                CustomText(msg: "Register", color: red,),
              ],
            ),
            
            Expanded(child: Container()),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "by signing up you agree with our "),
                    TextSpan(text: "Terms and conditions", style: TextStyle(color: red))
                  ],style: TextStyle(color: black)
              ),),
            )

          ],
        ),
      ),
    );
  }
}
