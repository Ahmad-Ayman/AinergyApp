import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:maslaha/otp_screen.dart';

import 'login_with_email.dart';
import 'new_pass_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    children: [
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
                SizedBox(
                  height: 90,
                ),
                Text(
                  'Reset Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'Okey It’s Easy\nJust Send Your Number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF617C94),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF5FAFF),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlign: TextAlign.start,
                      validator: (value) {},
                      obscureText: false,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 10),
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                    )),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xFFFF8B3E)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0),
                          )),
                    ),
                    child: Text(
                      'Reset',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      Get.to(NewPasswordScreen());
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'OR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFF617C94)),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xFFFEF2EB)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFFFF833E)),
                            borderRadius: BorderRadius.circular(23.0),
                          )),
                    ),
                    child: Text(
                      'Login With Email and Password',
                      style: TextStyle(color: Color(0xFFFF833E), fontSize: 16),
                    ),
                    onPressed: () {
                      Get.off(LoginWithEmailScreen());
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
