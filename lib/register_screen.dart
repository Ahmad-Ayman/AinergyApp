import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:maslaha/login_screen.dart';
import 'package:maslaha/otp_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Welcome To',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Ainergy',
                            style: TextStyle(
                                color: Color(0xFFFF833E),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Let's Set Your Account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF617C94),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFF5FAFF),
                      border: Border.all(color: Color(0xFF27425B40))),
                  child: SvgPicture.asset(
                    'assets/images/camera.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF5FAFF),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlign: TextAlign.start,
                      validator: (value) {},
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 10),
                        border: OutlineInputBorder(),
                        hintText: 'Name',
                      ),
                    )),
                SizedBox(
                  height: 12,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF5FAFF),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlign: TextAlign.start,
                      validator: (value) {},
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 10),
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                    )),
                SizedBox(
                  height: 12,
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
                        hintText: 'Phone Number',
                      ),
                    )),
                SizedBox(
                  height: 12,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF5FAFF),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlign: TextAlign.start,
                      validator: (value) {},
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 10),
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    )),
                SizedBox(
                  height: 25,
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
                      'Create Account',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      Get.to(OtpScreen(from: 0,));
                    },
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            color: Color(0xFF617C94),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Login',
                            style: TextStyle(
                                color: Color(0xFFFF833E),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // navigate to desired screen
                                  Get.to(LoginScreen());
                                }
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
