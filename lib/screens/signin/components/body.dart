import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'header.dart';
import 'login_form.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            LoginForm(formKey: _formKey),
            Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Don't have an account? "),
                InkWell(
                  onTap: () => print("Go to sign up page"),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
