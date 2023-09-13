import 'package:flutter/material.dart';



class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Atlas Monde',
              style: TextStyle(fontSize: 35,color: Colors.yellow),
              textAlign: TextAlign.center,
              
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/monde.png',
              width: 200,
            ),
            SizedBox(height: 20),
          
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.white,

            ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
                
              },
              child: Text('Enter',style: TextStyle(color: Colors.blue,fontSize: 20),),
              
            ),
          ],
        ),
      ),
    );
  }
}
