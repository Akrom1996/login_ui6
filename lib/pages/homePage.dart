import 'package:flutter/material.dart';
import 'package:login_ui6/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 150, right: 20, left: 20, bottom: 40),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.black45, Colors.black38, Colors.black12],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Find the best parties near you",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 32,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Let us find you a tutorial for your interest",
                style: TextStyle(color: Colors.teal[200], fontSize: 26),
              ),
              Spacer(),
              isLogin
                  ?
                  // Start
                  buttonWidget(
                      text: "Start",
                      color: Colors.amber[700],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: buttonWidget(
                            text: "Google",
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: buttonWidget(
                            text: "Facebook",
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class buttonWidget extends StatelessWidget {
  final color;
  final text;
  const buttonWidget({
    Key? key,
    @required this.color,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), color: color),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
