import 'package:chat_app/screens/signin/signin_screen.dart';
import 'package:chat_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (context) => WelcomeScreen(),
  "/signin": (context) => SignInScreen()
};
