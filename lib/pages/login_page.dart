import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movein/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var focusNodeEmail = FocusNode();
  var focusNodePassword = FocusNode();
  bool isFocusedEmail = false;
  bool isFocusedPassword = false;

  @override
  void initState() {
    
    focusNodeEmail.addListener(() {
      setState(() {
        isFocusedEmail = focusNodeEmail.hasFocus;
      });
    });
    focusNodePassword.addListener(() {
      setState(() {
        isFocusedPassword = focusNodePassword.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: 10,
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 900),
                    duration: const Duration(milliseconds: 1000),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          IconlyBroken.arrow_left,
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          delay: const Duration(milliseconds: 800),
                          duration: const Duration(milliseconds: 900),
                          child: Text(
                            'Let\'s Sign You In',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 800),
                          child: Text(
                            'Welcome Back.',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: const Text(
                            'You\'ve been missed!',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 700),
                    duration: const Duration(milliseconds: 800),
                    child: const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 700),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 0.8),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      decoration: BoxDecoration(
                          color:
                              isFocusedEmail ? Colors.white : Color(0xFFF1F0F5),
                          border:
                              Border.all(width: 1, color: Color(0xFFD2D2D4)),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            if (isFocusedEmail)
                              BoxShadow(
                                  color: Color(0xFF835DF1).withOpacity(.3),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0
                                  // Glow Color
                                  )
                          ]),
                      child: TextField(
                        style: TextStyle(fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Your Email'),
                        focusNode: focusNodeEmail,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 600),
                    child: const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 400),
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          color: isFocusedPassword
                              ? Colors.white
                              : Color(0xFFF1F0F5),
                          border:
                              Border.all(width: 1, color: Color(0xFFD2D2D4)),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            if (isFocusedPassword)
                              BoxShadow(
                                  color: Color(0xFF835DF1).withOpacity(.3),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0
                                  // Glow Color
                                  )
                          ]),
                      child: TextField(
                        style: const TextStyle(fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey,
                              size: 16,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password'),
                        focusNode: focusNodePassword,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: SizedBox(
                    height: 10,
                  )),
                  FadeInUp(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 700),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                                Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homepage(),
                              ),
                            );
                            },
                            child: FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 800),
                                child: Text('Sign In')),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi'),
                                backgroundColor: Color(0xFF835DF1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 16)),
                          ),
                        )
                      ],
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 800),
                    duration: const Duration(milliseconds: 900),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Color(0xFF835DF1),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}