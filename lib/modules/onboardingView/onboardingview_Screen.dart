import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:korek_app/modules/login/login_screen.dart';
import 'package:korek_app/modules/register/register_person_screen.dart';
import '../../shared/components/components.dart';

class OnBoardingView  extends StatefulWidget {
  const OnBoardingView({super.key});

   
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController nextpage =PageController();

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: PageView(
        controller: nextpage,
        onPageChanged: (value){
           setState((){
             pagenumber=value;
           });
           },
        children:[
         Column(
            children:[
             Expanded(
               child: Container(
                        // intro1hNk (7:15)
                padding:  EdgeInsets.fromLTRB(0, 60, 0, 0),
                width:  double.infinity,
                decoration:  BoxDecoration(
                color:  Color(0xffffffff),
                     ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                   SizedBox(
                       // autogroupztkgVZW (TkkHxyqi5cUM6vkfTZTkg)
                       width:  double.infinity,
                       height: 555,
                       child: Stack(
                       children:[
                       Positioned(
                       // component2Lq2 (9:28)
                       left:  90,
                       top:  50,
                       child:  
                       Container(
                       padding:  EdgeInsets.fromLTRB(22, 22, 22, 22),
                       width:  210,
                       height:  220,
                       decoration:  BoxDecoration (
                       color:  Color(0x33ee5253),
                       borderRadius:  BorderRadius.circular(119.5),
                       ),
                       child:  Center(
                       // ellipse5X8p (I9:28;7:22)
                       child:  SizedBox(
                       width:  double.infinity,
                       height:  195,
                       child:  Container(
                       decoration:  BoxDecoration (
                       borderRadius:  BorderRadius.circular(97.5),
                       color:  Color(0x33ee5253),
                       ),
                       ),
                       ),
                       ),
                       ),
                       ),
                       //انا انانانانانان
                       Positioned(
                       // component2Lq2 (9:28)
                       left:  160,
                       right: 0,
                       top:  240,
                       child:  
                       Container(
                       padding:  EdgeInsets.fromLTRB(22, 22, 22, 22),
                       width:  210,
                       height:  220,
                       decoration:  BoxDecoration (
                       color:  Color(0x33ee5253),
                       borderRadius:  BorderRadius.circular(119.5),
                       ),
                       child:  Center(
                       // ellipse5X8p (I9:28;7:22)
                       child:  SizedBox(
                       width:  double.infinity,
                       height:  195,
                       child:  Container(
                       decoration:  BoxDecoration (
                       borderRadius:  BorderRadius.circular(97.5),
                       color:  Color(0x33ee5253),
                       ),
                       ),
                       ),
                       ),
                       ),
                       ),
                       Positioned(
                       //الاحمر الصغيره
                       // ellipse4CEx (7:21)
                       left: -6,
                       top:  320,
                       child:  
                       Align(
                       child:  SizedBox(
                       width:  180,
                       height:  200,
                       child:  Container(
                       decoration:  BoxDecoration (
                       borderRadius:  BorderRadius.circular(119.5),
                       color:  Color(0x33ee5253),
                       ),
                       ),
                       ),
                       ),
                       ),
                       Positioned(
                       //الاحمر الكبيره
                       // ellipse642G (9:32)
                       left:  -20,
                       top:  300,
                       child:  
                       Align(
                       child:  SizedBox(
                       width:  210,
                       height:  240,
                       child:  Container(
                       decoration:  BoxDecoration (
                       borderRadius:  BorderRadius.circular(102.5),
                       color:  Color(0x33ee5253),
                       ),
                       ),
                       ),
                       ),
                       ),
                       Positioned(
                       //الاخضر الصغيره
                       // ellipse2k9z (7:19)
                       left:  30,
                       top:  170,
                       child:   Align(
                       child:  SizedBox(
                       width:  180,
                       height:  180,
                       child: Container(
                       decoration:  BoxDecoration (
                       borderRadius:  BorderRadius.circular(119.5),
                       color:  Color(0x331dd1a1),
                       ),
                       ),
                       ),
                       ),
                       ),
                       Positioned(
                       //الاخضر الكبيره
                       // ellipse5DpG (9:31)
                       left:  14,
                       top:  150,
                       child:  
                       Align(
                       child:  SizedBox(
                       width:  210,
                       height:  220,
                       child:  Container(
                       decoration:  BoxDecoration (
                       borderRadius:  BorderRadius.circular(100.5),
                       color:  Color(0x331dd1a1),
                       ),
                       ),
                       ),
                       ),
                       ),
                      
                       Positioned(
                       // yourcarisinsafehandsvig (7:17)
                       left:  14,
                       top:  30,
                       child:  
                       const Align( 
                       child:  SizedBox(
                       width:  300,
                       height:  468,
                       child: Text(
                       'Your\nCar is\nin Safe\nHands!',
                       style: TextStyle (
                       fontSize: 96,
                       fontWeight:  FontWeight.w300,
                       height:  1.1175,
                       color:  Color(0xff000000),
                       ),
                       ),
                       ),
                       ),
                       ),
                       ],
                       ),
                      ),
                      
                    
                     Expanded(
                      flex: 4,
                       child: dotpageview(),
                     ),
                     SizedBox(height: 20,),                  
                     
                    Expanded(
                     flex: 10,
                     child: SingleChildScrollView(
                     child: InkWell(
                      onTap: (){
                        nextpage.animateToPage(1, duration:Duration(milliseconds: 700), curve: Curves.easeIn);
                      },
                       child: Container(
                        height: 40,
                        width: 290,  
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [ 
                                Text(
                                      'Get Started',
                                      style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                   ),
                                    ),
                                    SizedBox(width: 70,),
                                  Icon(
                                      Icons.navigate_next_sharp,
                                      color: Colors.white,
                                  ),         
                                ]),
                          ),
                              ),
                            ),
                          ),
                          ),
                          ],),
                        ),
                          ),
                        ]),
          
           Container(
            color: Colors.white,
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Image(
                    image:AssetImage('assets/images/smalllogo.png'),
                ),
              ),
               Image(
                    image:AssetImage('assets/images/undraw_by_my_car_ff2f 1.jpg'),
                ),
                SizedBox(height: 70,),
                
                RichText(
                  text: TextSpan(
                    text:'All Your Cars in ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      fontFamily: '50'
                      ),
                      children: const [
                        TextSpan(text: '1 ' ,style: TextStyle(color: Colors.deepOrange)),
                        TextSpan(text:'place',),
                      ]
                    ),
                ), 
                  SizedBox(height: 20,),
                   Text(
                  'Register the details of all your cars, and \n follow up their maintainence schedule!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  dotpageview(),
                   SizedBox(
                    height: 29,
                  ), 
                  InkWell(
                    onTap: (){
                      nextpage.animateToPage(2, duration:Duration(milliseconds: 700), curve: Curves.easeIn);
                     },
                    child: Container(
                      width: 290,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                        ),
                        
                        child: Padding(
                          padding: const EdgeInsets.only(left:110),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                               'Next',
                               style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                                ),
                              ),
                               
                               SizedBox(width: 100,),
                              
                               Icon(
                                Icons.navigate_next_sharp,
                                color: Colors.white,
                                ), 
                            ],
                          ),
                        ),
                    ),
                  ),
            ],  
            ),
                 ), 
          
           Container(
            color: Colors.white,
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Image(
                    image:AssetImage('assets/images/smalllogo.png'),
                ),
              ),
                Image(
                width: 290,
                height: 260,
                    image:AssetImage('assets/images/undraw_automobile_repair_ywci 1.jpg'),
                ),
               
                SizedBox(height: 30,),

                Text(
                  'Register with your \n Service Provider',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    fontFamily: '50'
                    )
                  ), 
                  
                SizedBox(height: 10,),


                Text(
                      'Choose your car’s service provider to \n follow up with him and ask for check-ups!',
                      textAlign: TextAlign.center,
                     style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    ),
                                 ),
                 
                SizedBox(
                    height: 20,
                  ), 
                 
                 dotpageview(),
                  SizedBox(
                   height: 27,
                  ),
                  InkWell(
                    onTap: (){
                     nextpage.animateToPage(3, duration:Duration(milliseconds: 700), curve: Curves.easeIn);
                    },

                    child: Container(
                      width: 290,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left:110),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                               'Next',
                               style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                                ),
                              ),
                               
                               SizedBox(width: 100,),
                              
                               Icon(
                                Icons.navigate_next_sharp,
                                color: Colors.white,
                                ), 
                            ],
                          ),
                        ),
                    ),
                  ),
            ],  
            ),
          ),   
        
           Container(
            color: Colors.white,
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image(
                    image:AssetImage('assets/images/smalllogo.png'),
                ),
               ),
               
               Image(
                width: 250,
                height: 300,
               image:AssetImage('assets/images/Group 9.jpg'),
               ),
                SizedBox(height: 5,),
                Text(
                  'All services to your \nLocation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    fontFamily: '50'
                    )
                  ), 
                  SizedBox(height: 10,),
                   Center(
                     child: Text(
                        'Choose any of our services, set your \n location. Voila!',
                        textAlign: TextAlign.center,
                       style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      ),
                                   ),
                   ),
                  SizedBox(
                    height: 20,


                  ),
                  dotpageview(),
                   SizedBox(
                    height: 30,

                  ), 
                  Container(
                    width: 270,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            TextButton(
                              onPressed:() {
                                navigateTo(context, RegisterScreen());},
                              child: Text(
                               'sign up',
                               style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                               ),
                              ),
                            ),
                      
                            SizedBox(width: 60,),
                             
                             Icon(
                             Icons.navigate_next_sharp,
                            color: Colors.white,
                           ),
                          ],
                        ),
                      ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text:'Already have an account?',
                             
                            style:TextStyle(
                              color: Colors.black,
                              fontSize: 12
                              ),
                              children: [
                               TextSpan(
                                text: ' Login',
                                style:TextStyle(
                                  fontSize: 14,
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
                  ),
              ],  
            ),
          ),  
        ],
      ),
    );
    
  }
}