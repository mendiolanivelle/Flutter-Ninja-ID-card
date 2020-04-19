import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      home: Ninjacard()
    );
  }
}

class Ninjacard extends StatefulWidget {
  @override
  _NinjacardState createState() => _NinjacardState();
}

class _NinjacardState extends State<Ninjacard> {


int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar
      (
        title: Text('Ninja ID card'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding
      (
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>
          [
            Center(
              child: CircleAvatar
              (
                backgroundImage: AssetImage('assets/Zhenaica-1.jpg'),
                radius: 40,
              ),
            ),
            Divider(height: 90,color: Colors.white,),
            Text
            (
              'NAME',
              style: TextStyle
              (
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text
            (
              'Zhenaica Nicole Lucero',
              style: TextStyle
              (
                fontSize: 28,
                color: Colors.white,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            Text
            (
              'Current Ninja level',
              style: TextStyle
              (
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text
            (
              '$ninjalevel',
              style: TextStyle
              (
                fontSize: 28,
                color: Colors.white,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            Row
            (
              children: <Widget>
              [
                Icon
                (
                  Icons.email,color: Colors.white,
                ),
                SizedBox(width: 10,),
                Text
                (
                  'Zhenaicalucero@gmail.com',
                  style: TextStyle
                  (
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: () 
        {
          setState(() {
            ninjalevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}