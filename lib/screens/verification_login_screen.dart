import 'package:divar_app/constants/custom_colors.dart';
import 'package:divar_app/screens/stack_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/elevated_button.dart';

class VerificationPhoneLoginScreen extends StatefulWidget {
  const VerificationPhoneLoginScreen({super.key});

  @override
  State<VerificationPhoneLoginScreen> createState() =>
      _VerificationPhoneLoginScreenState();
}

class _VerificationPhoneLoginScreenState
    extends State<VerificationPhoneLoginScreen> {
  TextEditingController firstDigitInputController = TextEditingController();
  TextEditingController secondDigitInputController = TextEditingController();
  TextEditingController thirdDigitInputController = TextEditingController();
  TextEditingController fourthDigitInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'تایید شماره موبایل',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'کد ورود پیامک شده را وارد کنید',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14.0,
                    color: CustomColors.grey500,
                  ),
                ),
                const SizedBox(height: 32.0),
                Row(
                  children: [
                    Flexible(
                      child: GenerateOneDigitTextField(
                        controller: firstDigitInputController,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Flexible(
                      child: GenerateOneDigitTextField(
                        controller: secondDigitInputController,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Flexible(
                      child: GenerateOneDigitTextField(
                        controller: thirdDigitInputController,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Flexible(
                      child: GenerateOneDigitTextField(
                        controller: fourthDigitInputController,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ارسال مجدد کد',
                        style: TextStyle(
                            fontFamily: 'sm',
                            fontSize: 14.0,
                            color: CustomColors.grey400),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '۰۰:۴۵',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  child: GenerateElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const StackScreen(),
                      ));
                    },
                    child: const Text(
                      'تایید ورود',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GenerateOneDigitTextField extends StatelessWidget {
  const GenerateOneDigitTextField(
      {super.key, required this.controller, required this.onChanged});
  final TextEditingController controller;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      maxLength: 1,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
        fillColor: controller.text.isNotEmpty
            ? CustomColors.grey400
            : CustomColors.grey200,
        filled: true,
      ),
    );
  }
}
