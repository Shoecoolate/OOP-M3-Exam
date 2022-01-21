import 'package:flutter/material.dart';
import 'package:login_ui_design/dashboard.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Image.asset(
                          "images/app_logo.png",
                          height: 90,
                          width: 90,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, top: 20),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Add account",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffFFFFFF)
                  ),
                ],
              ),
              child: TextField(
                cursorColor: Color(0xffF5591F),
                decoration: InputDecoration(
                  hintText: "Phone, Email, or Username",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)
                  ),
                ],
              ),
              child: TextField(
                cursorColor: Color(0xffF5591F),
                decoration: InputDecoration(
                  focusColor: Color(0xffF5591F),
                  hintText: "Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Write Click Listener Code Here
                },
                child: Text("Forget Password?"),
              ),
            ),

            GestureDetector(
              onTap: () {
                // Write Click Listener Code Here.
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Home()));
                },
                child: Container(
                  height: 48,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(color: Color(0xff1DA1F2), borderRadius: BorderRadius.circular(6)),
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
            ],
        )
      )
    );
  }
}