import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:Row(
          children: [
            Icon(Icons.menu,color: Colors.black,),
            Image.asset("assets/images/club.jpg",scale: 5,),
          ],
        ),
      ),
    );
  }
}