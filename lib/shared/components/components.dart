import 'package:flutter/material.dart';

int pagenumber=0;
Widget dotpageview(){

    return Builder(builder: (context){
         return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           for(int i=0;i<4;i++)
                Container(
                 width:6,
                height: 6,
                margin:EdgeInsets.symmetric(horizontal: 10) ,
                decoration: BoxDecoration(
                color:i==pagenumber?Colors.deepOrange:Colors.black,
                borderRadius: BorderRadiusDirectional.circular(50),
              ),
             ),
          ],
       );
    });
   }

Widget defaultformfield( {
  required TextEditingController controller,
  required TextInputType type,
  VoidCallback? ontap,
  bool ispassword = false, 
  required String label, 
  required IconData prefix,
  IconData suffix = Icons.email,
  bool isclickable=true, 
  String? Function(String?)?validate,
    String? Function(String?)?onchange,
  
   
  })=>TextFormField(
    controller: controller,
    keyboardType:type,
    enabled:isclickable,
    obscureText:ispassword,
    validator:validate,
    onChanged: onchange,
    onTap:ontap,
    decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix!= null?IconButton(
    onPressed:(){},
    icon: Icon(suffix)):null,
      
    border: OutlineInputBorder(),
        ),
  );

void navigateTo (context,widget) =>
      Navigator.push(context, MaterialPageRoute(builder:(context) => widget),
); 

Widget otpnumber() =>

  SingleChildScrollView(
   scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i=0; i<4;i++)
        Container(
           width: 41,
           height: 54,
           margin:EdgeInsets.symmetric(horizontal: 10) ,
           decoration: BoxDecoration(
           border: Border.all(color: Color(0x19000000)),
          ),
          child: Center(
          child: Text(
               '0',
          style: TextStyle(
          color: Color(0xffdfdfdf),
          fontSize: 20
          ),
          textAlign: TextAlign.center,
          ),
          ),
          ),
      ],
    ),
  );

Widget serviceprovider() =>
           Container(
                  width: 76,
                  height: 83,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:Color(0x19000000)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                   child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                           color: Color(0xff3f3d56),
                           borderRadius: BorderRadius.circular(29),
                          ),
                          child: Image(
                               image:AssetImage('assets/images/PE-Logo-ENG 1.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'PetroMin\nExpress',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500
                        ),
                        ),               
                    ],
                   ),
                 );



