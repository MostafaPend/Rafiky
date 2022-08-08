import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rafiky/ChooseType.dart';
import 'package:rafiky/component/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rafiky',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}


/// Component UI
class SplashScreen extends StatefulWidget {

  SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

/// Component UI
class _SplashScreenState extends State<SplashScreen> {

  @override
  _SplashScreenState();

  /// Setting duration in splash screen
  startTime() {
    return Future.delayed(Duration(milliseconds: 2000)).then((value) => NavigatorPage());

  }


  /// To navigate layout change
  void NavigatorPage() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String ? acctoken = _prefs.getString('acctoken');
    //Check if user logged in before
    // if yes read wallet
    if(acctoken.toString() == "null"|| acctoken==null)
    {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ChooseType(accToken:"acctoken",)));


    }
    // Go to loginPage
    else {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ChooseType(accToken:"acctoken",)));
      // Navigator.of(context).pushReplacementNamed("login");

    }
  }

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorStyle.whiteColor,
      body: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                height: MediaQuery.of(context).size.width / 4,
                width: MediaQuery.of(context).size.width / 4,
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
