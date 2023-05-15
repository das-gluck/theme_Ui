import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Container(
              height: 730,
              margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.blue[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text('Y&A',style: TextStyle(fontSize: 20,color: CupertinoColors.activeBlue,fontWeight: FontWeight.w600),),
                         ),
                        ),

                        Container(child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Icon(Icons.menu,color: CupertinoColors.activeBlue,),
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80,),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 30),
                    height: 100,
                    width: 300,
                    child: Text('We Focus on your Story ',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 8),
                    height: 120,
                    // color: Colors.redAccent,
                    child: Text('Beacause our goal , as accountants, is to provide you with a list of services that are very reliable as you go across your buisness journey...',
                      style: TextStyle(
                          fontSize: 18,
                          color: CupertinoColors.activeBlue,
                          wordSpacing: 2,
                          height: 1.5
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ARROW UP
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(fullscreenDialog: true,builder: (context)=> Home()));
              },
              child: Container(
                alignment: Alignment(0,0.758),
                child: Icon(Icons.keyboard_arrow_up,size: 25,color: Colors.black12,),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(fullscreenDialog: true,builder: (context)=> Home()));
              },
              child: Container(
                alignment: Alignment(0,0.78),
                child: Icon(Icons.keyboard_arrow_up,size: 30,color: Colors.blue,),
              ),
            ),

            // SWIPE UP
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(fullscreenDialog: true,builder: (context)=> Home()));
              },
              child: Container(
                alignment: Alignment(0,0.857),
                child: Text(
                  'Swip Up',
                  style: TextStyle(fontSize: 20,color: CupertinoColors.activeBlue,fontWeight:FontWeight.w600),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
