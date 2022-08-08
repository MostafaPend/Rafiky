import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rafiky/Kid/Home.dart';
import 'component/alertSnakBar.dart';


class ChooseType extends StatefulWidget {
  final String accToken;
  const ChooseType({Key? key,required this.accToken}) : super(key: key);
  @override
  _veriPage createState() => _veriPage();
}

class _veriPage extends State<ChooseType> {



  @override
  void initState() {
    super.initState();

  }

  Widget build(BuildContext context) {
    //TODO: validate username and password not empty
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: SizedBox(height: 30,),),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                height: size.height * 0.1,
                width: MediaQuery.of(context).size.width*0.2,
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/welcome.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                height: size.height * 0.1,
                width: MediaQuery.of(context).size.width*0.6,
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/parentBtn.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                height: size.height * 0.2,
                width: MediaQuery.of(context).size.width*0.6,
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/advisorBtn.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                height: size.height * 0.2,
                width: MediaQuery.of(context).size.width*0.6,
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => KidHome(accToken:"acctoken",)));

                },
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/kidBtn.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: size.height * 0.2,
                  width: MediaQuery.of(context).size.width*0.6,
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ) ,),
      ),
    );
  }


}