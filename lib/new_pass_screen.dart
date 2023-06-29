import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:go_router/go_router.dart';
import 'package:maslaha/login_screen.dart';
import 'package:maslaha/otp_screen.dart';

import 'login_with_email.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Color(0xFF617C94),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Back',
                        style:
                        TextStyle(color: Color(0xFF617C94), fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  'New Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'It Is Okay\nBut Remember It Well This Time',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF617C94),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFFF5FAFF),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlign: TextAlign.start,
                      validator: (value) {},
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 10),
                        border: OutlineInputBorder(),
                        hintText: 'New Password',
                      ),
                    )),
                const SizedBox(
                  height: 24,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFFF5FAFF),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlign: TextAlign.start,
                      validator: (value) {},
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 10),
                        border: OutlineInputBorder(),
                        hintText: 'Confirm Password',
                      ),
                    )),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFFF8B3E)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0),
                          )),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {

                      context.goNamed('LoginEmail');
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'OR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFF617C94)),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFFEF2EB)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            side: const BorderSide(color: Color(0xFFFF833E)),
                            borderRadius: BorderRadius.circular(23.0),
                          )),
                    ),
                    child: const Text(
                      'Login With Email and Password',
                      style: TextStyle(color: Color(0xFFFF833E), fontSize: 16),
                    ),
                    onPressed: () {

                      context.goNamed('LoginEmail');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
