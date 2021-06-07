import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
            validator: (String email) {
              bool status = true;
              if (!status) {
                return "Please enter your email";
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            validator: (String value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              print(value);
              return null;
            },
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: ElevatedButton(
              onPressed: () => print("Go to home"),
              child: Text("Sign In"),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.blue[500],
                minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                textStyle: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
