import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

   bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  height: 400,
                  child: Image.asset('assets/images/logo_with_name.png'),
                ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: 500,
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    const Center(
                      child: Text(
                        'Create an Account',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text('Name'),
                              Text('*', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your name',
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Text('Email'),
                              Text('*', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your email',
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Text('Password'),
                              Text('*', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: '**********',
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Text("Confirm Password"),
                              Text("*", style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          TextFormField(
                            controller: confirmPasswordController,
                             obscureText: !_isPasswordVisible, 
                            decoration: InputDecoration(
                              hintText: '********',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Text("Company Name"),
                              Text("*", style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          TextFormField(
                            controller: companyNameController,
                            decoration: const InputDecoration(
                              hintText: 'Enter the company',
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Text('Company Location'),
                              Text('*', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          TextFormField(
                            controller: locationController,
                            decoration: const InputDecoration(
                              hintText: 'Enter the company location',
                            ),
                          ),
                          const SizedBox(height: 25),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(500, 50),
                              backgroundColor: const Color(0xFF1570EF),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Get Started'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        elevation: 0,
                        fixedSize: const Size(500, 50),
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 109, 108, 108),
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset('assets/images/googleIcon.png'),
                            ),
                            Text('Sign up with Google'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an Account?'),
                          SizedBox(width: 5),
                          Text(
                            'Sign in',
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
