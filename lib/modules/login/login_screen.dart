import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:korek_app/modules/register/register_person_screen.dart';
import 'package:korek_app/shared/components/components.dart';
class LoginScreen extends StatefulWidget {
  const  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
 }

 class _LoginScreenState extends State<LoginScreen> {

  TextEditingController countrycode=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text='+20';
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.only(top: 70),
        child: SingleChildScrollView(
          child: Column( 
            children:[
               Image(
                   image:AssetImage('assets/images/smalllogo.png'),
                  ),
                  
               SizedBox(
                height:220,
                ),
                
              //textfield
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all( width:1 , color: Color(0x19000000)),
                    borderRadius:BorderRadius.circular(5) 
                  ),
                  child: Row(
                    children: [
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
              ),
                
              
                SizedBox(
                height: 15,
                ),
               
                 Text(
                  'Please insert your phone number',
                  style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color:  Color(0xff000000),
                ),
                ),
               
                SizedBox(
                  height: 35,
                ),
        
                Container(
                  width: 184,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.black,
                     shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    ),
                    ), 
                    
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return Dialog(
                        child: Container(
                          width: 290,
                          height: 230,
                          child: Padding(
                            padding: const EdgeInsets.only(top:50),
                            child: Column(
                              children:[
                                Image(
                                  image: AssetImage('assets/images/Search results for Close - Flaticon 1.png'),
                                  ),
                                  SizedBox(height: 30,),
                                  Text('Wrong OTP'),
                                  TextButton(
                                    onPressed: (){},
                                    child: Text('Resend',style: TextStyle(color: Color(0xffee5253),
                                    ),
                                    ),
                                    ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                    showDialog(context: context, builder: (context){
                      return Dialog(
                        child: Container(
                          width: 290,
                          height: 230,
                          child: Padding(
                            padding: const EdgeInsets.only(top:80),
                            child: Column(
                              children:[
                                Image(
                                  image: AssetImage('assets/images/Search results for Checkmark - Flaticon 1.png'),
                                  ),
                                  SizedBox(height: 30,),
                                  Text('Phone Verified!'),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                    showDialog(context: context, builder: (context){
                      return Dialog(
                        child: Container(
                          width: 290,
                          height: 230,
                          child: Padding(
                            padding: const EdgeInsets.only(top:50),
                            child: Column(
                              children:[
                                Image(
                                  width: 100,
                                  height: 100,
                                  image: AssetImage('assets/images/Component 1.png'),
                                  ),
                                  SizedBox(height: 30,),
                                  Text('Verifying...'),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                    showDialog(context: context, builder: (context){
                      return Dialog(
                        child: Container(
                          width: 290,
                          height: 230,

                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [

                                Text(
                                  'Please insert the OTP \n we sent to your phone',
                                  style: TextStyle(
                                    fontSize: 14,

                                  ),
                                  ),
                                
                                SizedBox(height: 30,),    

                                otpnumber(),

                                SizedBox(height: 25,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Didn’t get it?'),
                                  TextButton(
                                  onPressed: (){},
                                    child: Text(
                                      'Resend',
                                      style:TextStyle(
                                        fontSize: 14,
                                        color:  Color(0xffee5253),
                                        ),
                                        ),
                                        ),
                  ],
                ),
                              
                              ],
                            ),
                          ),
                        ),
                        backgroundColor: Colors.white,
                      );
                    });
                    },
                     child: Text('Login',style: TextStyle(fontSize: 16),),
                    ),
                   ),
                
                  SizedBox(
                  height: 160,
                ),
                
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?'),
                    TextButton(
                    onPressed: (){
                      navigateTo(context, RegisterScreen());
                    },
                      child: Text(
                        'Sign up',
                        style:TextStyle(
                          fontSize: 14,
                          color:  Color(0xffee5253),
                          ),
                          ),
                          ),
                  ],
                ),
                ],
              ),
            ),
          ),
        );
      }
    }