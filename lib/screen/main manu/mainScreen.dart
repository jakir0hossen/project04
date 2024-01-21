import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blueAccent,
         title: Text("Click A Event",style: TextStyle(color: Colors.white),),
       ),
       backgroundColor: Colors.white,
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         type: BottomNavigationBarType.fixed,
         onTap: (index){
           _currentIndex = index;
         },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
           BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search" ),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_view_month_rounded),label:"Calendar" ),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label:"Account" ),
           BottomNavigationBarItem(icon: Icon(Icons.menu),label:"Menu" )
         ],
       ),
       body: getBodyWiget(),
     );
  }

  getBodyWiget() {
    return (_currentIndex==0)? HomePage():Container();
  }
}