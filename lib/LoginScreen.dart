// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
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
                  height: 150,
                ),
                const Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                      hintStyle:
                          const TextStyle(fontSize: 20, color: Colors.grey),
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
                      hintStyle:
                          const TextStyle(fontSize: 20, color: Colors.grey),
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
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black45,
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
                        'Sign In',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )),
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Dont have an Account',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xFFF1C40F),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )),
      ),
    ));
  }
}
