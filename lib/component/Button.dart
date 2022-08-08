import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Button(BuildContext context,String title,IconData icon) {
  Size size = MediaQuery.of(context).size;
  return GestureDetector(
    onTap: ()async{

    },
    child: Container(
      width: size.width/4,
      height: size.height/10,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF529FE1), Color(0xFF2CC298)],
          stops: [0, 1],
          begin: AlignmentDirectional(0, -1),
          end: AlignmentDirectional(0, 1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: AlignmentDirectional(0, 0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
            ),
            WidgetSpan(
              child: Icon(icon, size: 14),
            ),
          ],
        ),
      ),
    ),
  );
}