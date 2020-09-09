import 'package:flutter/material.dart';
import 'package:por_trait/about.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('images/nrd.jpg'),
            ),
            SizedBox(
              height: 15,
              width: 200,
            ),
            Text(
              'Ruchi Saini',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade900,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade900 ,
              ),
            ),
            Card(

              margin: EdgeInsets.symmetric(vertical: 6.0,
                  horizontal: 12.0),
              child: ListTile(
                leading: Icon(Icons.phone,
                  color: Colors.teal,
                ) ,
                title: Text(
                  '44 123 456 78',
                  style: TextStyle(
                    color: Colors.teal,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),

            Card(

              margin: EdgeInsets.symmetric(vertical: 6.0,
                  horizontal: 12.0),
              child: ListTile(
                leading: Icon(Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'ruchi2511saini@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.teal,
                    fontFamily: 'Source Sans Pro',
                  ),

                ),
              ),
            ),
            Card(color: Colors.teal,
              margin: EdgeInsets.fromLTRB(100, 40, 100, 0),
              child: ListTile(
                title: Center(
                  child: Text("About me",
                  style: TextStyle(color: Colors.white),),

                ),
                trailing: Icon(Icons.arrow_forward,
                color: Colors.white,),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },

            ),
            ),

          ],
        ),
      ),
    ) ;
  }
}

