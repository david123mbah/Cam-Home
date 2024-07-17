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
  late FocusNode focusNodeEmail;
  late FocusNode focusNodePassword;
  bool isFocusedEmail = false;
  bool isFocusedPassword = false;

  @override
  void initState() {
    super.initState();
    focusNodeEmail = FocusNode();
    focusNodePassword = FocusNode();
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
  }

  @override
  void dispose() {
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    super.dispose();
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
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    _buildBackButton(context),
                    const SizedBox(height: 20),
                    _buildWelcomeText(),
                    const SizedBox(height: 100),
                    _buildInputField(
                      label: 'Email',
                      focusNode: focusNodeEmail,
                      isFocused: isFocusedEmail,
                      hintText: 'Your Email',
                    ),
                    const SizedBox(height: 5),
                    _buildInputField(
                      label: 'Password',
                      focusNode: focusNodePassword,
                      isFocused: isFocusedPassword,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 40),
                    _buildSignInButton(context),
                    const SizedBox(height: 10),
                    _buildRegisterOption(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 900),
      duration: const Duration(milliseconds: 1000),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(IconlyBroken.arrow_left, size: 20),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFadeInText('Let\'s Sign You In', 800, 25, FontWeight.w600),
        const SizedBox(height: 10),
        _buildFadeInText('Welcome Back.', 700, 25, FontWeight.w400),
        _buildFadeInText('You\'ve been missed!', 600, 25, FontWeight.w400),
      ],
    );
  }

  Widget _buildFadeInText(String text, int delay, double fontSize, FontWeight fontWeight) {
    return FadeInDown(
      delay: Duration(milliseconds: delay),
      duration: Duration(milliseconds: delay + 100),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required FocusNode focusNode,
    required bool isFocused,
    required String hintText,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          delay: const Duration(milliseconds: 700),
          duration: const Duration(milliseconds: 800),
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        FadeInDown(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 0.8),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              color: isFocused ? Colors.white : const Color(0xFFF1F0F5),
              border: Border.all(width: 1, color: const Color(0xFFD2D2D4)),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                if (isFocused)
                  BoxShadow(
                    color: const Color(0xFF835DF1).withOpacity(.3),
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  ),
              ],
            ),
            child: TextField(
              style: const TextStyle(fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                suffixIcon: obscureText
                    ? const Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                        size: 16,
                      )
                    : null,
                border: InputBorder.none,
                hintText: hintText,
              ),
              focusNode: focusNode,
              obscureText: obscureText,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 600),
      duration: const Duration(milliseconds: 700),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Satoshi',
                ),
                backgroundColor: const Color(0xFF835DF1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Sign In'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterOption() {
    return FadeInUp(
      delay: const Duration(milliseconds: 800),
      duration: const Duration(milliseconds: 900),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don\'t have an account?',
            style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Register',
              style: TextStyle(color: Color(0xFF835DF1), fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
