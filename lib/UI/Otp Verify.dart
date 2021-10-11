import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:google_fonts/google_fonts.dart';
class Otpverify extends StatefulWidget{
  @override
  _OtpverifyState createState() => _OtpverifyState();
}

class _OtpverifyState extends State<Otpverify> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: Container(
       margin: EdgeInsets.symmetric(horizontal: 10),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("Verification",style: GoogleFonts.openSans(
           textStyle: Theme.of(context).textTheme.headline4,
           fontSize: 30,
           fontWeight: FontWeight.w700,
          )),
             SizedBox(height: 10,),
             Text("A text message with OTP has been sent to :(********03)",style: GoogleFonts.openSans(
               textStyle: Theme.of(context).textTheme.headline4,
               fontSize: 14,
               fontWeight: FontWeight.w700,)),
             SizedBox(height: 30,),
             OTPTextField(
               length: 5,
               width: MediaQuery.of(context).size.width,
               textFieldAlignment: MainAxisAlignment.spaceAround,
               fieldWidth: 55,
               fieldStyle: FieldStyle.box,
               outlineBorderRadius: 15,
               style: TextStyle(fontSize: 17),
               onChanged: (pin) {
                 print("Changed: " + pin);
               },
               onCompleted: (pin) {
                 print("Completed: " + pin);
               },
             ),
             SizedBox(height: 30,),
             Container(
               margin: EdgeInsets.all(10),
               child: RichText(
                 text: TextSpan(
                   children: [
                     TextSpan(
                         text: "Didn't received  ",style: TextStyle(color: Colors.grey,fontSize: 15)
                     ),
                     TextSpan(
                         text: "Resend OTP?",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w800, decoration: TextDecoration.underline,fontSize: 15)
                     ),

                   ],
                 ),
               ),
             ),
             SizedBox(height: 20,),
             Container(
               margin: EdgeInsets.all(10),
               width: double.infinity,
               child: RaisedButton(
                 padding: const EdgeInsets.all(14),
                 textColor: Colors.white,
                 color: Colors.blue,
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpverify()));
                 },
                 child: Text('Verify Number'),
               ),
             ),
           ],
         ),
       ),
     ),

   );
  }
}