import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    var tamanhoDiff = MediaQuery.of(context).size.width - MediaQuery.of(context).size.height; 

    _customInput({String labelText, bool isPassword = false}) {
      return 
        Container(
          width: tamanhoDiff * 0.8,
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xFFF6F7F9),
            borderRadius: BorderRadius.circular(16)
          ),
          child: 
            TextField(
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700
              ),
              obscureText: isPassword,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: labelText ?? "-",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
        );
    }

    _customButton() {
      return 
        GestureDetector(
          onTap: () {
            print("Registrando");
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 24),
            width: tamanhoDiff * 0.8,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF2A3537),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        );
    }


    return Scaffold(
      body: Container(
        width: largura,
        height: altura,
        color: Colors.white,
        child: Row(
          children: [

            Container(
              height: altura,
              width: altura,
              decoration: BoxDecoration(
                color: Color(0xFFC59A81),
                image: DecorationImage(
                  image: NetworkImage("https://i.ibb.co/x151cJT/shoopApp.png"),
                  fit: BoxFit.cover,
                )
              ),
            ),

            Container(
              color: Colors.white,
              height: altura,
              width: tamanhoDiff,
              child: Column(
                children: [

                  // Header
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          "shopapp",
                          style: TextStyle(
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(32)
                          ),
                          child: Text(
                            "a",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  // Content
                  Container(
                    width: tamanhoDiff * 0.8,
                    margin: EdgeInsets.symmetric(vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 64
                          ),
                        ),
                        Container(height: 24),
                        Text(
                          "Let's create yout account",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: Colors.black.withOpacity(0.4)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 32
                  ),

                  Column(
                    children: [

                      _customInput(
                        labelText: "Username",
                      ),

                      _customInput(
                        labelText: "Email",
                      ),

                      Container(
                        width: tamanhoDiff * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: (tamanhoDiff / 2) * 0.8 - 8,
                              child: 
                                _customInput(
                                  labelText: "Password",
                                  isPassword: true
                                ),
                            ),

                            Container(
                              width: (tamanhoDiff / 2) * 0.8 - 8,
                              child: 
                                _customInput(
                                  labelText: "Confirm",
                                  isPassword: true
                                ),
                            )
                          ]
                        ),
                      )
                    ],
                  ),

                  _customButton(),

                  Container(
                    height: 64
                  ),

                  Container(
                    width: tamanhoDiff * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "By creation an account, you agree to the ",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.4)
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            print("send to terms");
                          },
                          child: Text(
                            "Terms and Conditions",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              decoration: TextDecoration.underline
                            ),
                          ),
                        ),

                        Text(
                          " and ",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.4)
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            print("send to policys");
                          },
                          child: Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              decoration: TextDecoration.underline
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
      
    );
  }
}