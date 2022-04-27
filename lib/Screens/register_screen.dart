import 'package:flutter/material.dart';

import '../Constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white, shadowColor: Colors.transparent),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              SizedBox(
                child: ClipRRect(
                  child: Image.asset("images/flogo.png"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to Arch",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please follow these community rules",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              SizedBox(
                height: 100,
              ),
              Awareness(
                queryData: queryData,
                strContent: "Hello",
                strHead: "Be Yourself",
              ),
              AwarenessContent(
                queryData: queryData,
                strContent:
                    "Make sure your photo,age and bio are true to who you are",
              ),
              SizedBox(
                height: 30,
              ),
              Awareness(
                queryData: queryData,
                strContent: "Hello",
                strHead: "Be Yourself",
              ),
              AwarenessContent(
                queryData: queryData,
                strContent:
                    "Make sure your photo,age and bio are true to who you are",
              ),
              SizedBox(
                height: 30,
              ),
              Awareness(
                queryData: queryData,
                strContent: "Hello",
                strHead: "Be Yourself",
              ),
              AwarenessContent(
                queryData: queryData,
                strContent:
                    "Make sure your photo,age and bio are true to who you are",
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: SizedBox(),
              ),
              Container(
                width: queryData.size.width * 0.6,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: kCustomGradient,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff54AEFE).withOpacity(0.44),
                        blurRadius: 12.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: const Offset(
                          0.0, // Move to right 10  horizontally
                          0.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Color(0xffEFFFFD).withOpacity(0.25),
                    splashFactory: InkRipple.splashFactory,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: const Center(
                        child: Text(
                      "I Agree",
                      style: TextStyle(
                        fontFamily: 'monsterrats',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AwarenessContent extends StatelessWidget {
  const AwarenessContent({
    required this.strContent,
    required this.queryData,
  });

  final MediaQueryData queryData;
  final String strContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: queryData.size.width * 0.7,
      child: Flexible(
        child: Text(
          strContent,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }
}

class Awareness extends StatelessWidget {
  const Awareness({
    required this.strContent,
    required this.strHead,
    required this.queryData,
  });

  final MediaQueryData queryData;
  final String strContent;
  final String strHead;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: queryData.size.width * 0.7,
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: Colors.blueAccent,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            strHead,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
