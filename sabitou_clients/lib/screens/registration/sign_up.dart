import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/images/logo_with_name.png'),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/logo.png'),
              ),
              Center(
                child: Text('Create an Account'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
