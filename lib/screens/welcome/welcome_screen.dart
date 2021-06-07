import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
          child: Column(
            children: [
              Spacer(flex: 2),
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    left: 30,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/SelfieDoodle.png',
                  ),
                ],
              ),
              Spacer(flex: 1),
              Text(
                "Connect us together \nwith CHIC CHAT app",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 1),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.black.withOpacity(0.7))),
              Spacer(flex: 2),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/signin"),
                child: Text("GET STARTED"),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.blue[500],
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.6, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
