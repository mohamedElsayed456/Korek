import 'dart:async';

import 'package:flutter/material.dart';
import 'package:korek_app/modules/onboardingView/onboardingview_Screen.dart';



class SPlashViewScreen extends StatefulWidget {
  const SPlashViewScreen({super.key});


  @override
  State<SPlashViewScreen> createState() => _SPlashViewScreenState();
}

class _SPlashViewScreenState extends State<SPlashViewScreen> {

@override
  void initState() {
    super.initState();
   Timer(const Duration(seconds: 4),()
    {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingView(),));
    });
    }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image(

           image:AssetImage('assets/images/logo-white 1.png'),
          ),
      ),
    );
}
}