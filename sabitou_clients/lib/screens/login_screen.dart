import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'signup_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUp() {
    String Email = emailController.text;
    String Password = passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/fayeed_logo.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
                width: 400,
                height: 420,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            'Fayeed Electronics',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Login with your registered credentials',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email Address',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 16),
                      const Text('Forgot Password?'),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {
                          signUp();
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            backgroundColor: Colors.orange),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Not yet a member?'),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ),
                              );
                            },
                            child: const Text(
                              'Signup now',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
