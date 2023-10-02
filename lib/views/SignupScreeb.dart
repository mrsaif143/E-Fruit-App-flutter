import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'LoginScreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Container(
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      offset: Offset(0, 8), // Offset in the bottom direction
                    ),
                  ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Center(
                          child: Text(
                        'Creat Account',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            fillColor: const Color.fromRGBO(
                                196, 196, 196, 0.35), // Background color
                            filled: true,
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 241, 196, 15)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(253, 241, 196, 15)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: const Color.fromRGBO(
                                196, 196, 196, 0.35), // Background color
                            filled: true,
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 241, 196, 15)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(253, 241, 196, 15)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            fillColor: const Color.fromRGBO(
                                196, 196, 196, 0.35), // Background color
                            filled: true,
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 241, 196, 15)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(253, 241, 196, 15)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      SizedBox(
                        height: 66,
                        width: 345,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF1C40F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                            child: const Text(
                              'Sign Up',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          const Text(
                            'Already have an Account',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(const LoginScreen());
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF1C40F),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}
