import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed:() {
        Navigator.of(context)
            .pop();
      },
      ),
        backgroundColor: Colors.teal,
          ),
      body: GridView.count(
        crossAxisCount: 1,
        padding:EdgeInsets.all(16.0),
        childAspectRatio: 0.9,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
          children: <Widget>[
            myGridItems("Hello and Thank You for visiting my Portfolio."
                "Hope, all are doing well ..."
                " First,let me introduce myself My name is Ruchi Saini "
                " I live in Sambhal , UP .."
                "In free time I love to listening music and reading books. "
                "My goals is to be a proficient coder with excellent problem solving skills that's why i always try to build up my "
                "problem solving skills as I have worked on Hackerrank as reference .."
                " "
                ,"https://www.businessinsider.com/how-to-copy-screen-on-windows?IR=T",0xFF26a69a,0xFF00bfa5),
            myGridItems( " Currently, I am pursuing Btech with Computer science and engineering branch from Ajay kumar Garg Engineering college, Ghaziabad ."
                " My Academic details are I have got 85% in 12th and an average of 87 in Btech first year."
                " Also , i have done programming in core language like C++ .,"
                "Currently, I am learning App development using Flutter ..I like creative work and am very innovative as i have a capability to work in a team."
                " Thank you!! "

    ,"https://www.businessinsider.com/how-to-copy-screen-on-windows?IR=T" ,0xFF00838f ,0xFF00bfa5 ),
          ],
      )
    );
  }

  Widget myGridItems(String gridName,String gridimage,int color1, int color2)
  {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
         gradient: new LinearGradient(
           colors: [
             Color(0xFF00838f),
             Color(0xFF00bfa5),

           ],
           begin: Alignment.centerLeft,
           end: new Alignment(1.0,1.0),
         ),

      ),
    child: Stack(
      children: <Widget>[
        Opacity(
          opacity:0.3,
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: new NetworkImage(gridimage),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

  Padding(
  padding: const EdgeInsets.only(left:16.0),
  child: Text(gridName,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
    ),

    ],
    )  ,

    );
  }
}