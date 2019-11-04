import 'package:flutter/material.dart';
import 'package:login_ui_kit/services/styles.dart';
import 'package:login_ui_kit/widgets/custom_text.dart';
import 'package:login_ui_kit/widgets/logo.dart';
import 'package:login_ui_kit/widgets/placeholder_txt.dart';
import 'package:login_ui_kit/widgets/rectTextInput.dart';
import 'package:login_ui_kit/widgets/round_btn.dart';
import 'package:login_ui_kit/widgets/round_btn_gradient.dart';

class LoginThree extends StatefulWidget {
  @override
  _LoginThreeState createState() => _LoginThreeState();
}

class _LoginThreeState extends State<LoginThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40,),
              Logo(),
              Text("Welcome", style: TextStyle(letterSpacing: 7, fontSize: 46, color: black, fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              PlaceHolderText(),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: RectTextInput(hitText: "Email address", icon: Icons.alternate_email,),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: RectTextInput(hitText: "Password", icon: Icons.lock_outline,),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:20, right: 20),
                child: RoundBtnGradient(
                  msg: "Login",
                  function: (){},
                  colorOne: Colors.pink[300],
                  colorTwo: Colors.orange[300],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RoundBtnGradient(

                        msg: "facebook",
                        function: (){},
                        colorOne: Colors.blueAccent,
                        colorTwo: Colors.blue[300],
                      ),
                    ),

                    SizedBox(width: 10,),

                    Expanded(
                      child: RoundBtnGradient(
                        msg: "Guest user",
                        function: (){},
                        colorOne: Colors.green,
                        colorTwo: Colors.green[300],
                      ),
                    ),

                  ],
                ),
              ),


              SizedBox(
                height: 60,
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "by signing up you agree with our "),
                        TextSpan(text: "Terms and conditions", style: TextStyle(color: red))
                      ],style: TextStyle(color: black)
                  ),),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
