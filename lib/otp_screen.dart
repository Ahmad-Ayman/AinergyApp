import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'home_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key, required this.from}) : super(key: key);
  final int from;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40,),
                GestureDetector(
                  onTap: () {

                    context.pop();
                  },
                  child: Row(children: [
                    const Icon(Icons.arrow_back_outlined, color: Color(0xFF617C94),),
                    const SizedBox(width: 8,),
                    const Text('Back', style: TextStyle(color: Color(0xFF617C94),
                        fontSize: 16),)
                  ],),
                ),
                const SizedBox(height: 90,),
                const Text(
                  'Welcome To',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'Check Your Sms Messages,\nWe Have Sent You The Pin',
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
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.7,
                  child: PinCodeTextField(
                    cursorColor: const Color(0xFFFFFFFF),
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: const Color(0xFFF5FAFF),
                      activeColor: const Color(0xFFFF833E),
                      inactiveColor: const Color(0xFF27425B40),
                      inactiveFillColor: const Color(0xFFF5FAFF),
                      selectedFillColor: const Color(0xFFF5FAFF),
                      selectedColor: const Color(0xFFFF833E),
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.white,
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
                    // controller: textEditingController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                    appContext: context,
                  ),
                ),
                const SizedBox(height: 24,),
                SizedBox(
                  height: 50,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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
                    child: Text(
                      from == 0 ? 'Verify Now' : 'Verify to Login',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      context.goNamed('Home');
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
