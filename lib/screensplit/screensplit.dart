import 'package:flutter/material.dart';
import 'package:gecdatingapp/Screens/login_screen.dart';

class ScreenSplit extends StatelessWidget {
  const ScreenSplit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),

            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child: Container(
                child: Text("Login"),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Text("Register"),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Text("welcome"),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Text("profile"),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Text("swipescreen"),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Text("Chat"),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Text("Extra"),
              ),
            ),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
