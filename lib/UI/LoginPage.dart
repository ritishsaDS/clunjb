import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'Otp Verify.dart';

class Loginpage extends StatefulWidget{
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     backgroundColor: Colors.white,
     body: SingleChildScrollView(
       child: SafeArea(child: Container(child: Column(

         children: [
         Center(child: Image.asset("assets/images/logo.jpg",scale: 1.5,)),
           Container(
             margin: EdgeInsets.all(10),
             // width: 180,
             child:   TextField(

               decoration: new InputDecoration(
                 prefixIcon: Icon(Icons.flag),
                 suffixIcon: Icon(Icons.arrow_drop_down),
                 filled: true,
                 fillColor: Colors.grey[200],
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   borderSide: BorderSide(color: Colors.grey.shade200, ),
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   borderSide: BorderSide(color: Colors.grey.shade200, ),
                 ),
                 hintText: 'xxx  Select Country',
               ),
             ),),
         Container(
           margin: EdgeInsets.all(10),
           child: Row(
             children: [
               Container(
                 width: 180,
                 child:   TextField(

                 decoration: new InputDecoration(
                   prefixIcon: Icon(Icons.person),
                   filled: true,
                   fillColor: Colors.grey[200],
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0),
                     borderSide: BorderSide(color: Colors.grey.shade200, ),
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0),
                     borderSide: BorderSide(color: Colors.grey.shade200, ),
                   ),
                   hintText: 'Firstname',
                 ),
               ),),
               SizedBox(width: 20,),
               Container(
                 width: 190,
                 child:   TextField(

                   decoration: new InputDecoration(
                     filled: true,
                     fillColor: Colors.grey[200],
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10.0),
                       borderSide: BorderSide(color: Colors.grey.shade200, ),
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10.0),
                       borderSide: BorderSide(color: Colors.grey.shade200, ),
                     ),
                     hintText: 'Lastname',
                   ),
                 ),),
             ],
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
          // width: 180,
           child:   TextField(

             decoration: new InputDecoration(
               prefixIcon: Icon(Icons.mobile_screen_share),
               filled: true,
               fillColor: Colors.grey[200],
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10.0),
                 borderSide: BorderSide(color: Colors.grey.shade200, ),
               ),
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10.0),
                 borderSide: BorderSide(color: Colors.grey.shade200, ),
               ),
               hintText: 'Mobile Number',
             ),
           ),),
           Container(
             margin: EdgeInsets.all(10),
             // width: 180,
             child:   TextField(

               decoration: new InputDecoration(
                 prefixIcon: Icon(Icons.share),
                 suffixIcon: Icon(Icons.info_outline),
                 filled: true,
                 fillColor: Colors.grey[200],
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   borderSide: BorderSide(color: Colors.grey.shade200, ),
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   borderSide: BorderSide(color: Colors.grey.shade200, ),
                 ),
                 hintText: 'Referral Mobile No.(Optional)',
               ),
             ),),
           Container(
             margin: EdgeInsets.all(10),
             child: RichText(
               text: TextSpan(
                 children: [
                   TextSpan(
                     text: "By Signing up you confirm that you are over 18 years of age and agree to the ",style: TextStyle(color: Colors.grey,fontSize: 15)
                   ),
                   TextSpan(
                     text: " Terms & Conditions ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w800, decoration: TextDecoration.underline,fontSize: 15)
                   ),
                   TextSpan(
                     text: "and  ",style: TextStyle(color: Colors.grey,fontSize: 15),
                   ),
                   TextSpan(
                     text: "Privacy & Policy ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w800, decoration: TextDecoration.underline,fontSize: 15)
                   ),
                 ],
               ),
             ),
           ),
           Container(
             margin: EdgeInsets.all(10),
             width: double.infinity,
             child: RaisedButton(
               padding: const EdgeInsets.all(14),
               textColor: Colors.white,
               color: Colors.blue,
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
               },
               child: Text('Click here to Login/Register'),
             ),
           ),
       ],),),),
     ),
   );
  }
}