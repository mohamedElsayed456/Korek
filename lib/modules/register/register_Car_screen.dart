import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:korek_app/modules/register/register_success_Screen.dart';
import 'package:korek_app/shared/components/components.dart';
class RegisterCarScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Padding(
        padding: const EdgeInsets.only(top:60),
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left:20,right: 20),
            child: Column(
              children:[
                 Image(
                    image:AssetImage('assets/images/smalllogo.png'),
                 ),
                 
                 SizedBox(height: 20,),
          
                 Container(
                  width: 333,
                  height: 40,
                          decoration: BoxDecoration(
                          border: Border.all( width:1 , color: Color(0x19000000)),
                          borderRadius: BorderRadius.circular(5)
                           ), 
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextField(
                                  keyboardType:TextInputType.text,
                                  decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Brand',
                                    suffixIcon: Icon(Icons.arrow_drop_down,size: 40,color: Colors.black,),
                                    hintStyle:TextStyle(
                                      color: Color(0x19000000)
                                      ),
                                  ),
                                 
                            ),
                           ),
                         ),
              
                  SizedBox(height: 10,),
          
                 Container(
                   width: 333,
                  height: 40,
                          decoration: BoxDecoration(
                          border: Border.all( width:1 , color: Color(0x19000000)),
                          borderRadius: BorderRadius.circular(5)
                           ), 
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextField(
                                  keyboardType:TextInputType.text,
                                  decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Model',
                                    suffixIcon: Icon(Icons.arrow_drop_down,size: 40,color: Colors.black,),
                                    hintStyle:TextStyle(
                                      color: Color(0x19000000)
                                      ),
                                  ),
                                 
                            ),
                           ),
                         ),
              
                 SizedBox(height: 10,),
          
                 Container(
                   width: 333,
                  height: 40,
                          decoration: BoxDecoration(
                          border: Border.all( width:1 , color: Color(0x19000000)),
                          borderRadius: BorderRadius.circular(5)
                           ), 
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextField(
                                  keyboardType:TextInputType.text,
                                  decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Year',
                                    suffixIcon: Icon(Icons.arrow_drop_down,size: 40,color: Colors.black,),
                                    hintStyle:TextStyle(
                                      color: Color(0x19000000)
                                      ),
                                  ),
                                 
                            ),
                           ),
                         ),
                 
                 SizedBox(height: 10,),
          
                 Container(
                   width: 333,
                  height: 40,
                          decoration: BoxDecoration(
                          border: Border.all( width:1 , color: Color(0x19000000)),
                          borderRadius: BorderRadius.circular(5)
                           ), 
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextField(
                                  keyboardType:TextInputType.number,
                                  decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Plate number',
                                    hintStyle:TextStyle(
                                      color: Color(0x19000000)
                                      ),
                                  ),
                                 
                            ),
                           ),
                         ),
                 
                 SizedBox(height: 10,),
          
                 Container(
                   width: 333,
                  height: 40,
                          decoration: BoxDecoration(
                          border: Border.all( width:1 , color: Color(0x19000000)),
                          borderRadius: BorderRadius.circular(5)
                           ), 
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextField(
                                  keyboardType:TextInputType.text,
                                  decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Chassis number',
                                    hintStyle:TextStyle(
                                      color: Color(0x19000000)
                                      ),
                                  ),
                                 
                            ),
                           ),
                         ),
                 
                 SizedBox(height: 30,),

                 Padding(
                   padding:EdgeInsets.symmetric(horizontal:10.0),
                   child:Container(
                    height:1.0,
                     width:220.0,
                      color:Colors.black12,
                       ),
                       ),
                  
                  SizedBox(height: 20,),

                 Text(
                  'Choose your service Provider',
                    style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                    ),
                    ),
                   
                 SizedBox(height: 20,),

                  SingleChildScrollView(
                   scrollDirection : Axis.horizontal,
                   child: Row(
                    children: [
                      serviceprovider(),
                      SizedBox(width: 20,),
                      serviceprovider(),
                      SizedBox(width: 20,),
                      serviceprovider(),
                      SizedBox(width: 20,),
                      serviceprovider(),
                    ],
                   ),
                 ),
                    
                  SizedBox(height: 20,),

                   Padding(
                   padding:EdgeInsets.symmetric(horizontal:10.0),
                   child:Container(
                    height:1.0,
                     width:220.0,
                      color:Colors.black12,
                       ),
                       ),
                 
                  SizedBox(height: 20,),

                   Text(
                    'Take a photo for the license',
                    style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w500
                    ),
                   ),
                  
                   SizedBox(height: 20,),
                   
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 130,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x4cd9d9d9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children:[
                              Icon(Icons.camera_alt_rounded,color: Colors.grey,size: 40,),
                              SizedBox(height: 10,),
                              Text('Front',style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),   
                         Container(
                        width: 130,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x4cd9d9d9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children:[
                              Icon(Icons.camera_alt_rounded,color: Colors.grey,size: 40,),
                              SizedBox(height: 10,),
                              Text('Back',style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ),
                      ),              
                    ],
                   ),
                  
                  SizedBox(height: 20,),

                  Padding(
                   padding:EdgeInsets.symmetric(horizontal:10.0),
                   child:Container(
                    height:1.0,
                     width:220.0,
                      color:Colors.black12,
                       ),
                       ),
                   
                   SizedBox(height: 20,),
                   
                     Text(
                    'Take a photo for the Car',
                    style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w500
                    ),
                   ),
                     
                      SizedBox(height: 20,),

                      Container(
                        width: 130,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x4cd9d9d9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children:[
                              Icon(Icons.camera_alt_rounded,color: Colors.grey,size: 40,),
                              SizedBox(height: 10,),
                              Text('Car',style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ),
                      ),
                 
                       SizedBox(height: 40,),

                       Container(
                           width: 250,
                           height: 40,
                           child: ElevatedButton(
                            onPressed: (){
                              navigateTo(context, RegistrationSuccessScreen());
                            },
                           style: ElevatedButton.styleFrom(
                           backgroundColor:Colors.white60,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                           ),
                           ),
                           
                           child: Text('Register my Car',style: TextStyle(fontSize: 16),
                           ),
                           ),
                           ), 

                      SizedBox(height: 20,),
                 ]
                   ),
          )
        )
       )
    );
  }
}