import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/SitReadingDoodle.png',
          width: 160,
        ),
        Text(
          "Welcome,",
          style: Theme.of(context).textTheme.headline4.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        Text(
          "Sign in with your account",
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Colors.black.withOpacity(0.6),
              ),
        ),
      ],
    );
  }
}
