import 'package:flutter/material.dart';
import 'package:login_ui_kit/services/styles.dart';

class CustomText extends StatelessWidget {
  final String msg;
  final double size;
  final Color color;
  final FontWeight weight;


  CustomText({this.size,@required this.msg, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(msg, style: TextStyle(fontSize: size ?? 18, color: color ?? black, fontWeight: weight ?? FontWeight.normal));
  }
}
