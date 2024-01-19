import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
     return Container(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                margin: const EdgeInsets.only(left: 20,right: 20),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(AssetImage("images/Heart.png"),size: 30,color: Colors.black,),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10,),
                        Icon(Icons.notifications)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text("Events Near you",style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 180,
                child: Stack(
                 children: [
                  Positioned(
                    top:0,
                     right: 0,
                     left: -20,
                     child: Container(
                       height: 180,
                       child: PageView.builder(
                           controller: PageController(viewportFraction: 0.8),
                           itemCount: 5,
                           itemBuilder: (_,i){
                             return Container(
                               height: 180,
                               width: MediaQuery.of(context).size.width,
                               margin: const EdgeInsets.only(right: 10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   image:  DecorationImage(
                                     image: AssetImage("images/slide.png"),
                                     fit: BoxFit.fill
                                   )
                               ),
                             );
                           }),
                     ),
                   )
                 ],

                )
              ),



            ],
          ),
        ),
      ),
     );
  }
}