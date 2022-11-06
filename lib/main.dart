import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int myLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[200],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            myLevel++;
          }),

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/OPT.jpeg'
                ),
                radius: 45.00,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.black,
            ),

            Text(
              "NAME",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "SydThaKid",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 32.0,
              ),
            ),
            SizedBox(
              height: 30.00,
            ),
            Text(
              "Current Level",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$myLevel",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 32.0,
              ),
            ),
            SizedBox(height: 30.00,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.yellow[800],
                ),
                SizedBox(width: 10.00,),
                Text(
                  "goeurysydney@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.00,
                    letterSpacing: 1.8,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

