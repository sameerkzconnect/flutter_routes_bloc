


import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({required this.infoText ,super.key});
 final String infoText;
  @override
  Widget build(BuildContext context) {
   return Text(infoText,style: const TextStyle(
     color: Colors.black
   ),);
  }
}
