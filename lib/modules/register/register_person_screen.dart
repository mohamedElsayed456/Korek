import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:korek_app/modules/login/login_screen.dart';
import 'package:korek_app/modules/register/register_Car_screen.dart';
import 'package:korek_app/shared/components/components.dart';

class RegisterScreen extends StatefulWidget{
  
   var emailcontroller=TextEditingController();

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
   TextEditingController countrycode=TextEditingController();

  @override
  void initState() {
    countrycode.text='+20';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top:40),
        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                   Image(
                      image:AssetImage('assets/images/smalllogo.png'),
                    ),
                      
                      SizedBox(height: 30,),
                   
                      Container(
                        decoration: BoxDecoration(
                        border: Border.all( width:1 , color: Color(0x19000000)),
                         ), 
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: TextField(
                                keyboardType:TextInputType.text,
                                decoration:InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Full Name',
                                  hintStyle:TextStyle(
                                    color: Color(0x19000000)
                                    ),
                                ),
                               
                          ),
                         ),
                       ),
                        SizedBox(height: 20,),
                        Container(
                        decoration: BoxDecoration(
                        border: Border.all( width:1 , color: Color(0x19000000)),
                         ), 
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: TextField(
                                keyboardType:TextInputType.text,
                                decoration:InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Address',
                                  hintStyle:TextStyle(
                                    color: Color(0x19000000)
                                    ),
                                ),
                               
                              ),
                         ),
                       ),
                         SizedBox(height: 20,),
                         Container(
                        decoration: BoxDecoration(
                        border: Border.all( width:1 , color: Color(0x19000000)),
                         ), 
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: TextField(
                                
                                keyboardType:TextInputType.text,
                                decoration:InputDecoration(
                                  suffixIcon: Icon(Icons.calendar_today_outlined,color: Colors.grey,),
                                  border: InputBorder.none,
                                  hintText: 'Date of Birth',
                                  hintStyle:TextStyle(
                                    color: Color(0x19000000)
                                    ),
                                ),
                               
                              ),
                         ),
                       ),
                          SizedBox(height: 20,),
                          Container(
                           height: 55,
                           decoration: BoxDecoration(
                             border: Border.all( color: Color(0x19000000)),
                           ),
                           child: Row(
                             children:[
                             SizedBox(width: 10,),
                               //flag
                             Image(image: AssetImage('assets/images/Search results for Egypt flag - Flaticon 1.png')),
                             SizedBox(width: 4,),
              
                             SizedBox(
                               width: 30,
                               child:TextField(
                               controller: countrycode,
                                 decoration:InputDecoration(
                                  border: InputBorder.none
                                 ),
                               ),
                               ),
                  
                               Text('|',style: TextStyle(fontSize: 33, color: Color(0x19000000)),),
                               
                               SizedBox(width:10),
                  
                               Expanded(
                                 child: TextField(
                                   
                                   keyboardType:TextInputType.number,
                                   decoration:InputDecoration(
                                     border: InputBorder.none,
                                     hintText: '0100 234 4325',
                                     hintStyle:TextStyle(
                                       color: Color(0x19000000)
                                       ),
                                   ),
                                 
                                 ),
                               ),
                             ],
                           ),
                          ), 
                      
                         SizedBox(height: 40,),
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
                           
                           child: Text('Verify Phone Number',style: TextStyle(fontSize: 16),
                           ),
                           ),
                           ), 
                         
                          SizedBox(height: 40,),

                           Container(
                           width: 200,
                           height: 40,
                           child: ElevatedButton(
                            onPressed: (){
                              navigateTo(context, RegisterCarScreen());
                            },
                           style: ElevatedButton.styleFrom(
                           backgroundColor:Colors.green,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                           ),
                           ),
                           
                           child: Text('Sign your Car',style: TextStyle(fontSize: 16),
                           ),
                           ),
                           ),   

                           SizedBox(height: 110,),
                           Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text:'Already have an account?',
                             
                            style:TextStyle(
                              color: Colors.black,
                              fontSize: 13
                              ),
                              children: [
                               TextSpan(
                                text: ' Login',
                                style:TextStyle(
                                  fontSize: 15,
                                  color: Colors.deepOrange
                                  ),
                                 recognizer: TapGestureRecognizer()
                                  ..onTap=(){
                                     navigateTo(context, LoginScreen(),);
                                  }
                               ),
                              ]
                              ),
                             ),   
                         ],
                    ),
                      ],
              
              ),
            ),
          ),
        ),
      )
         );
              
  }           
}