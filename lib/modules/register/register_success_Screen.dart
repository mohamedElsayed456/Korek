import 'package:flutter/material.dart';

class RegistrationSuccessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Padding(
        padding: const EdgeInsets.only(top:60),
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left:20,right: 20),
            child: Center(
              child: Column(
                children:[
                   Image(
                      image:AssetImage('assets/images/smalllogo.png'),
                   ),
            
                   SizedBox(height: 140,),
            
                   Image(
                      image:AssetImage('assets/images/success.png'),
                   ),

                   SizedBox(height: 25,),

                   Text(
                    'Registration Successful',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),

                    SizedBox(height: 10,),

                   Text(
                    'Now you can use our app :’)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                
                     SizedBox(height: 80,),
                 
                   Container(
                           width: 250,
                           height: 40,
                           child: ElevatedButton(
                            onPressed: (){},
                           style: ElevatedButton.styleFrom(
                           backgroundColor:Colors.black,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                           ),
                           ),
                           
                           child:Text(
                            'Go to Home Page',
                            style: TextStyle(fontSize: 16),
                           ),
                           ),
                           ), 
                
                ]
              ),
            ),
          ),
        ),
       )
    );
  }
}