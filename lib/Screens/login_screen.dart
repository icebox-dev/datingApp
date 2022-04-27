import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gecdatingapp/Constants.dart';
import 'package:gecdatingapp/Screens/otp_screen.dart';
import 'package:gecdatingapp/state_management/provider_state.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    StateManage provider = Provider.of<StateManage>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
                child: Center(
                    child: SizedBox(
              child: Text("LOgo"),
            ))),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              height: queryData.size.height * 0.33,
              width: queryData.size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: queryData.size.width * 0.8,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(height: 1.5),
                        children: [
                          const TextSpan(
                            text:
                                'By clicking Log In, you agree with our Terms, Learn how we process your data in our ',
                            style: TextStyle(
                                color: Colors.black38,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w300,
                                letterSpacing: 0.5,
                                fontSize: 10),
                          ),
                          TextSpan(
                              text: 'Privacy Policy and Cookies Policy',
                              style: const TextStyle(
                                  color: Color(0xff6D6D6D),
                                  fontFamily: 'poppins',
                                  letterSpacing: 0.5,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w100),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://pub.dev/packages/url_launcher/install');
                                }),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Text("By clicking Log In, you agree with our Terms, Learn how we process your data in our Prvacy Policy and Cookies Policy"),
                  Container(
                    width: queryData.size.width * 0.6,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
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
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) => Bsheet(),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ));
                        },
                        child: const Center(
                            child: Text(
                          "Login or Register",
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
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    child: Text(
                      "Trouble logging in?",
                      style: TextStyle(color: Color(0xff6D6D6D)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bsheet extends StatelessWidget {
  const Bsheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
        margin: EdgeInsets.only(left: 30, top: 40, bottom: 0, right: 30),
        height: queryData.size.height * 0.30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Just the mail,",
              style: TextStyle(
                wordSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              "we got you covered !",
              style: TextStyle(
                fontSize: 35,
                wordSpacing: 2,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: queryData.size.width * 0.6,
              height: 50,
              child: TextField(
                onChanged: (val) {},
                decoration: InputDecoration(
                    hintText: "tcr*******@gectcr.ac.in",
                    hintStyle: TextStyle(letterSpacing: 3),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtpScreen()));
              },
              child: Text(
                "Verify →",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 25, color: Colors.blueAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
