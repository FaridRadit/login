import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(MaterialApp(
  theme: ThemeData(
    fontFamily: "poppin",
    scaffoldBackgroundColor: Colors.white,
  ),
  home: login(),
));

class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}
Widget _buildSocialButton(IconData icon, Color bgColor,Color Iconcolor) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: bgColor, // Background color
      shape: BoxShape.rectangle, // Makes it a circle
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.18),
          blurRadius: 10, // Blur effect
          spreadRadius: 2, // Spread effect
          offset: Offset(4, 4), // Shadow direction
        ),
      ],
    ),
    child: Center(
      child: FaIcon(icon, size: 30,color: Iconcolor,), // Icon centered
    ),
  );
}

class _loginState extends State<login> {

  void handleSubmit(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Image.asset('asset/paytren.png'),
            ),



            SizedBox(height: 30,),
            Center(
              child: SizedBox(
                width: 400,
              child: TextField(
                decoration: InputDecoration(
                    border : OutlineInputBorder(borderRadius: BorderRadius.circular(8),

                    ),
                    labelText: "Username",
                    hintText: "Enter Username"

                ),


              ),
              )
            ),
            SizedBox(height: 20,),
            Center(
              child: SizedBox(
                width: 400,
            child:TextField(
        obscureText: true,

        decoration: InputDecoration(

          border : OutlineInputBorder(borderRadius: BorderRadius.circular(8)),

          labelText: "Password",
          hintText: "Enter Password",


        ),


            ),
            )
            ),
            SizedBox(height: 20,),
            Center(
              child: SizedBox(
                width: 400,
        child: ElevatedButton(
            onPressed: handleSubmit,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(33, 50, 156, 1), // Set button color
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Adjust padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
            ),
            child: Text("Login",style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),),

              ),
            ),
            SizedBox(height: 20),
            Opacity(opacity: 0.7,
            child: Text("Or Sign Up With",style: TextStyle(fontSize: 16,),),

            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20,),
                _buildSocialButton(FontAwesomeIcons.tiktok, Colors.white,Colors.black),
                SizedBox(width: 20,),
                _buildSocialButton(FontAwesomeIcons.facebook, Colors.white,Colors.blueAccent),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
