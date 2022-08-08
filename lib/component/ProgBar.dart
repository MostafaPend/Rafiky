import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Itm extends StatelessWidget {
  final int value;
  final String name;
  final Color wColor;

  const Itm({required this.value,required this.name,required this.wColor});
  @override
  Widget build(BuildContext context) {
    print(150 * ((value - (value % 10)) / 100));
    Size size= MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width/13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            child: Text(name,style: GoogleFonts.poppins(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 5,),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 8,
                width: MediaQuery.of(context).size.width/1.37,
                decoration: BoxDecoration(
                  color: Color(0xfff1f9ff),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 8,
                    width: (MediaQuery.of(context).size.width/1.37) * ((value - (value % 10)) / 100),
                    decoration: BoxDecoration(
                      color: wColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),

            ],
          )
        ],),);
  }
}
