import 'package:flutter/material.dart';

class KidHome extends StatefulWidget {
  final String accToken;
  const KidHome({Key? key,required this.accToken}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _kidHome createState() => _kidHome();
}

// ignore: camel_case_types
class _kidHome extends State<KidHome> {

  @override
  void initState() {
    super.initState();

  }

  Widget build(BuildContext context) {
    //TODO: validate username and password not empty
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: SizedBox(height: 20,),),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/happyRaf.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                height: size.height * 0.2,
                width: MediaQuery.of(context).size.width*0.5,
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/eduBtn.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                height: size.height * 0.2,
                width: MediaQuery.of(context).size.width*0.6,
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/gameBtn.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                height: size.height * 0.2,
                width: MediaQuery.of(context).size.width*0.6,
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/selfBtn.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                height: size.height * 0.2,
                width: MediaQuery.of(context).size.width*0.6,
              ),
              const SizedBox(height: 10,),

            ],
          ) ,),
      ),
    );
  }


}