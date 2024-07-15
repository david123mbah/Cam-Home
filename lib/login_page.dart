// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 16, 16, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: const SizedBox(
                        width: 250,
                        child: Text(
                          '9:41',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            height: 1,
                            color: Color(0xFF0E0F0F),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 2, 0, 1),
                      child: SizedBox(
                        width: 71,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2.5, 5, 0.5),
                              width: 18,
                              height: 10,
                              child: SizedBox(
                                width: 18,
                                height: 10,
                                child: SvgPicture.asset(
                                  'assets/vectors/mobile_signal_x2.svg',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 1, 5.7, 1),
                              width: 15.3,
                              height: 11,
                              child: SizedBox(
                                width: 15.3,
                                height: 11,
                                child: SvgPicture.asset(
                                  'assets/vectors/union_x2.svg',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 27,
                              height: 13,
                              child: SizedBox(
                                width: 27,
                                height: 13,
                                child: SvgPicture.asset(
                                  'assets/vectors/battery_x2.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Container(
                  height: 48,
                  padding: const EdgeInsets.fromLTRB(27, 18, 27, 18),
                  child: SizedBox(
                    width: 6,
                    height: 12,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_18_x2.svg',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 24, 28),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Login/Signup',
                          style: TextStyle(
                      
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            height: 1.1,
                            color: const Color(0xFF0E0F0F),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Let’s explore your dream house',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.5,
                        color: Color(0xFF0E0F0F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 24, 16),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE3E5E5)),
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                width: 20,
                                height: 16,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: const SizedBox(
                                    width: 20,
                                    height: 16,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                child: Text(
                                  '+91',
                                  style: TextStyle(
                                    
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1,
                                    color: const Color(0xFF0E0F0F),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                                width: 8,
                                height: 4,
                                child: SizedBox(
                                  width: 8,
                                  height: 4,
                                  child: SvgPicture.asset(
                                    'assets/vectors/vector_13_x2.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Mobile number',
                          style: const TextStyle(
                          
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1,
                            color: Color(0xFFB4B6B8),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: -6,
                      top: -2,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFF7337),
                        ),
                        child: Container(
                          width: 21,
                          height: 8,
                        ),
                      ),
                    ),
                    Positioned(
                      left: -6,
                      bottom: -2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF18C03D),
                        ),
                        child: Container(
                          width: 21,
                          height: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 27.3, 48),
              child: Text(
                'You will receive an SMS verification that may apply message and data rates.',
                style: TextStyle(
                  
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.3,
                  color: Color(0xFF7A7E80),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'android/assets/images/Rectangle 6 copy.png',
                    ),
                  ),
                ),
                child: SizedBox(
                  width: 575,
                  height: 678,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(23, 306, 25, 66),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(48),
                            ),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 16, 7, 16),
                              child: Text(
                                'Next',
                                style: TextStyle(
                            
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  height: 0.9,
                                  color: const Color(0xFF0A0909),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                          child: Text(
                            'Use email, instead',
                            style: TextStyle(
                              
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1,
                              color: Color.fromARGB(255, 16, 9, 9),
                            ),
                          ),
                        ),
                      ],
                    ),
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