import 'package:flutter/material.dart';

class RecoredPage extends StatelessWidget {
  const RecoredPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height:screenHeight * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              IconButton(
            icon: Icon(Icons.arrow_back),
           onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            ],),
            SizedBox(height: screenHeight * 0.4),
            Column(
              children: const [
                Text(
                  'This page is under construction',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 16.0),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromARGB(255, 0, 4, 255)),
                ),
              ],

            )
            
          ],
        ),
      ),
    );
  }
}
